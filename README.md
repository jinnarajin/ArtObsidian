# ArtObsidian

의존성 없는 미니 옵시디언 클론 — HTML 파일 하나 + 선택적 파이썬 서버.

## 기능
- 마크다운 편집 / 분할 / 읽기 모드
- `[[위키링크]]` + 입력 자동완성
- 폴더 트리, 노트 검색
- 그래프 뷰 (위키링크 = 엣지)
- 저장 모드 3가지: 브라우저 localStorage → 로컬 폴더(File System Access API) → 서버 vault

## 사용법
그냥 열기 (localStorage 모드):
브라우저에서 `index.html` 열기, 또는 https://jinnarajin.github.io/ArtObsidian/

서버 vault (여러 기기에서 같은 노트 공유):
```bash
python3 server.py 8787
```
접속: `http://<서버IP>:8787` — 노트는 서버의 `vault/` 폴더에 `.md`로 저장, 3초 폴링으로 외부 변경 자동 반영.
