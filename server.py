#!/usr/bin/env python3
"""ArtObsidian 노트 서버 — 표준 라이브러리만 사용.

사용법: python3 server.py [포트]   (기본 8787)
노트는 이 파일 옆의 vault/ 폴더에 .md로 저장됩니다.
"""
import json, os, sys, urllib.parse
from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler

ROOT = os.path.dirname(os.path.abspath(__file__))
VAULT = os.path.join(ROOT, 'vault')
os.makedirs(VAULT, exist_ok=True)


def safe(rel):
    """vault 밖으로 나가는 경로(../ 등) 차단."""
    full = os.path.normpath(os.path.join(VAULT, rel))
    if not (full + os.sep).startswith(VAULT + os.sep) and full != VAULT:
        raise ValueError('path escape')
    return full


class Handler(SimpleHTTPRequestHandler):
    def __init__(self, *a, **kw):
        super().__init__(*a, directory=ROOT, **kw)

    def _path_param(self):
        q = urllib.parse.urlparse(self.path).query
        rel = urllib.parse.parse_qs(q).get('path', [''])[0]
        if not rel:
            raise ValueError('missing path')
        return safe(rel)

    def _json(self, obj, code=200):
        body = json.dumps(obj).encode()
        self.send_response(code)
        self.send_header('Content-Type', 'application/json')
        self.send_header('Content-Length', str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        url = urllib.parse.urlparse(self.path)
        if url.path == '/api/list':
            notes, folders = [], []
            for dirpath, dirnames, filenames in os.walk(VAULT):
                dirnames[:] = [d for d in dirnames if not d.startswith('.')]
                rel_dir = os.path.relpath(dirpath, VAULT)
                if rel_dir != '.':
                    folders.append(rel_dir.replace(os.sep, '/'))
                for f in filenames:
                    if not f.endswith('.md'):
                        continue
                    full = os.path.join(dirpath, f)
                    rel = os.path.relpath(full, VAULT).replace(os.sep, '/')
                    with open(full, encoding='utf-8', errors='replace') as fp:
                        body = fp.read()
                    # ponytail: 본문을 목록에 통째로 포함 — 수백 개 노트까진 충분, 커지면 mtime만 주고 본문은 개별 fetch
                    notes.append({'path': rel, 'mtime': int(os.path.getmtime(full) * 1000), 'body': body})
            return self._json({'folders': folders, 'notes': notes})
        return super().do_GET()

    def do_PUT(self):
        if not self.path.startswith('/api/note'):
            return self.send_error(404)
        try:
            full = self._path_param()
        except ValueError:
            return self.send_error(400)
        body = self.rfile.read(int(self.headers.get('Content-Length', 0)))
        os.makedirs(os.path.dirname(full), exist_ok=True)
        with open(full, 'wb') as fp:
            fp.write(body)
        self._json({'mtime': int(os.path.getmtime(full) * 1000)})

    def do_DELETE(self):
        if not self.path.startswith('/api/note'):
            return self.send_error(404)
        try:
            full = self._path_param()
            os.remove(full)
        except ValueError:
            return self.send_error(400)
        except FileNotFoundError:
            pass
        self._json({'ok': True})

    def do_POST(self):
        if not self.path.startswith('/api/folder'):
            return self.send_error(404)
        try:
            os.makedirs(self._path_param(), exist_ok=True)
        except ValueError:
            return self.send_error(400)
        self._json({'ok': True})


if __name__ == '__main__':
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8787
    print(f'ArtObsidian 서버: http://0.0.0.0:{port}  (vault: {VAULT})')
    ThreadingHTTPServer(('0.0.0.0', port), Handler).serve_forever()
