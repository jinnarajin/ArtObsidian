# 시장 조사

> 작성자: 리서치팀 / Claude · 작성일: 2026-08-10 · 문서 상태: 초안

## 3.1 조사 목적과 범위

- **조사 대상 시장**: 개인용 노트/PKM(개인 지식 관리) 앱 시장 + 창작자용 비주얼 레퍼런스 관리 툴 시장의 교차 영역
- **지역**: 글로벌 (시장 규모 자료는 글로벌 기준, 앱 스토어 기준 영어권 중심 자료가 다수 — 한국 시장 특화 데이터는 확보하지 못함, 추정 필요)
- **사용자 집단**: 미술 전공자·일러스트레이터·컨셉 아티스트 등 시각 창작자 중 아이디어·자료를 텍스트+이미지로 기록하려는 개인 사용자 (iPad/Mac 사용자 우선)
- **조사 기간**: 2026-08-10 웹 검색 1회차 (모든 출처 확인일 동일)

## 3.2 주요 시장 동향

### 시장·사용자 행동 변화
- 글로벌 노트테이킹 앱 시장은 2025년 약 110억 달러 → 2026년 약 133억 달러로 성장 전망(CAGR 약 20%). 조사 기관별 추정치 편차가 큼(2026년 187억 달러 추정도 존재)에 유의. (확인일 2026-08-10, [The Business Research Company](https://www.thebusinessresearchcompany.com/report/note-taking-app-global-market-report), [Global Growth Insights](https://www.globalgrowthinsights.com/market-reports/note-taking-app-market-100690))
- 성장 동력: 태블릿+스타일러스 사용 증가, 종이→디지털 전환, AI 기반 노트 정리 통합. 태블릿 중심 창작자와 겹치는 흐름. (확인일 2026-08-10, 위 출처 동일)
- 로컬 우선(local-first)·평문 파일 소유권에 대한 사용자 관심 증가 — 벤더 락인·프라이버시 우려로 Obsidian/Logseq류 마크다운 로컬 파일 방식이 지지를 얻는 중. (확인일 2026-08-10, [Ink & Switch local-first 에세이](https://www.inkandswitch.com/essay/local-first/), [Flexnote 블로그](https://myflexnote.com/blog/best-local-first-note-taking-apps))

### 관련 기술·정책 변화
- 주요 노트앱들이 AI 기능(볼트 대상 RAG Q&A, 인라인 생성)을 플러그인/내장 형태로 빠르게 채택 중 — Obsidian 커뮤니티 플러그인 1,700개+ 중 인기 상위가 AI 계열. (확인일 2026-08-10, [Cloudwards Obsidian 리뷰](https://www.cloudwards.net/obsidian-review/))
- Obsidian이 네이티브 Canvas(비주얼 워크스페이스)를 확장하는 등 텍스트 노트앱의 비주얼 기능 강화 흐름. (확인일 2026-08-10, [AISO Tools](https://aisotools.com/blog/obsidian-review-2026))

### 동기화 인프라 — iCloud 구독 보급률
- 미국 Apple 사용자의 약 2/3(64%)가 iCloud 유료 스토리지(iCloud+)를 구독 — Apple 서비스 중 최고 보급률(Apple Music 42%, TV+ 32% 대비). iPhone 사용자 한정 시 59%. 무료 5GB는 2011년 이후 동결. (CIRP 2024 조사, 확인일 2026-08-10, [Cult of Mac](https://www.cultofmac.com/news/icloud-storage-adoption-apple-tv-plus-music-applecare-2024), [iDownloadBlog](https://www.idownloadblog.com/2024/08/21/cirp-survey-apple-icloud-storage-most-popular-apple-service/))
- 시사점: iCloud Drive 기반 멀티기기(iPhone/iPad/Mac) 동기화는 다수 사용자에게 추가 비용 없이 동작. 단, 미구독자(약 1/3)를 위해 로컬 전용 모드도 완전 동작해야 함 — 텍스트 볼트는 무료 5GB로도 충분(이미지 축적 시 한계). 앱이 iCloud에 종속되지 않는 것 자체가 평문 파일 방침의 이점.

### 경쟁 서비스의 변화
- Obsidian: 코어 무료 유지, Sync $4/월·Publish $8/월의 부가 서비스 모델. 모바일 앱 개선 지속. (확인일 2026-08-10, [eesel Obsidian pricing](https://www.eesel.ai/blog/obsidian-pricing))
- Milanote: 창작자 대상 비주얼 보드 앱으로 자리 잡음. 무료 100카드 제한, 개인 유료 약 $9.99/월(연간). (확인일 2026-08-10, [Capterra](https://www.capterra.com/p/165790/Milanote/), [gappsy 리뷰](https://www.gappsy.com/tools/milanote/))
- 레퍼런스 관리 툴 시장에 refern, Kosmik 등 신규 진입자가 Eagle/PureRef 대안으로 등장 — 창작자용 이미지 관리 수요가 커지는 신호. (확인일 2026-08-10, [refern 블로그](https://www.refern.app/blog/best-eagle-alternatives-without-copying-files-2026), [Kosmik](https://www.kosmik.app/blog/pureref-alternatives))

## 3.3 경쟁·대안 서비스

| 서비스명 | 핵심 기능 | 강점 | 한계 |
|---|---|---|---|
| Obsidian | 마크다운 로컬 볼트, 위키링크, 그래프 뷰, 1,700+ 플러그인, Canvas | 무료·평문 파일 소유권, 강력한 링크/그래프, 거대 커뮤니티 | 범용 툴이라 미술 자료 워크플로(이미지 중심 브라우징)엔 설정 부담, 초심자 진입장벽 |
| Notion | 블록 기반 문서·DB, 협업, AI | 압도적 사용자 규모(1억+ 추정), 올인원 유연성 | 클라우드 종속·오프라인 약함, 파일 소유권 없음, 개인 창작 기록엔 무거움 |
| Milanote | 비주얼 보드, 무드보드, 드래그앤드롭, 웹 클리퍼 | 창작자 특화 UX, 이미지 배치 자유도 | 무료 100카드 제한, 웹 기반·평문 내보내기 없음, 텍스트 노트/링크 구조 약함 |
| Bear | 애플 네이티브 마크다운 노트, 태그 | 가볍고 아름다운 애플 생태계 UX, 저렴($2.99/월) | 위키링크·그래프 없음(약함), 이미지 자료 관리 기능 부족, 자체 DB 저장 |
| Craft | 구조화 문서, 협업, 애플 네이티브 | 시각적으로 세련된 편집기 | $5/월, 자체 포맷, 개인 아이디어 볼트보단 팀 문서 지향 |
| Eagle | 이미지 에셋 라이브러리, 태그·색상 검색, 항상 위 고정 | 대용량 이미지 관리에 최적, 디자이너 표준급 | Windows/Mac 데스크톱 전용(iPad 없음), 노트·링크 기능 없음 |
| PureRef | 레퍼런스 이미지 캔버스 뷰어 | 무료(기부제), 극단적으로 가볍고 아티스트 표준 | 뷰어일 뿐 — 기록·검색·지식 축적 불가, 모바일 없음 |
| Apple 메모 | 기본 노트, 이미지·스케치 첨부, iCloud 동기화, 이미지 내 텍스트 검색(OCR) | 무료·설치 불요, 애플 기기 간 매끄러운 동기화, 사진·손그림 첨부 간편 — 사실상 기본값 대안 | 위키링크·그래프·태그 구조 없음(태그는 #만 단순 지원), 마크다운 미지원, 자체 포맷·평문 내보내기 없음(락인), 자료가 쌓이면 폴더+검색만으로 재발견 어려움 |

(출처: 위 3.2 각 링크, 확인일 2026-08-10)

## 3.4 SWOT 분석

| 구분 | 분석 내용 | 판단 근거 |
|---|---|---|
| 강점(S) | 평문 .md + 옵시디언 볼트 호환 = 락인 제로, 로컬 우선 트렌드에 정합. SwiftUI 네이티브로 iPad/Mac 경험 우수 | local-first 선호 증가(Ink & Switch, Flexnote, 확인일 2026-08-10); Eagle·Milanote는 네이티브 iPad 마크다운 볼트를 제공하지 않음(3.3 조사) |
| 약점(W) | 1인 개발 규모 — Obsidian 플러그인 생태계(1,700+)와 기능 폭 경쟁 불가. 동기화·협업 미제공 | Cloudwards Obsidian 리뷰(확인일 2026-08-10); 현 프로젝트 범위(개인 앱) |
| 기회(O) | "텍스트 지식관리 × 이미지 레퍼런스"의 교차 영역이 비어 있음 — 노트앱은 이미지 관리가 약하고, 레퍼런스 툴은 노트·링크가 없음. 시장 자체도 고성장(CAGR ~20%) | 3.3 비교표: Eagle/PureRef는 노트 없음, Bear/Obsidian은 이미지 브라우징 약함; 시장 규모 출처(The Business Research Company, 확인일 2026-08-10) |
| 위협(T) | Obsidian이 Canvas 등 비주얼 기능을 계속 흡수 중이며 플러그인으로 유사 워크플로 구성 가능. 신규 레퍼런스 툴(refern, Kosmik) 진입 활발. 멀티기기 동기화가 iCloud 구독에 기대는 구조라면 미구독자(약 1/3, 이미지 볼트는 무료 5GB 초과 가능)에게 진입 장벽 — 핵심 가치가 "기기 간 이어지는 기록"일수록 치명적 | AISO Tools Obsidian 2026 리뷰; refern/Kosmik 블로그; CIRP 2024 iCloud 보급률 조사(확인일 2026-08-10) |

## 3.6 시장 조사 결론

- **기회**: 노트앱(텍스트·링크 중심)과 레퍼런스 툴(이미지 중심) 사이의 틈새 — "그림 자료를 보면서 쓰는 개인 위키"를 iPad/Mac 네이티브로 제공하는 제품은 조사 범위 내에서 확인되지 않았다. 시장 전체가 고성장 중이고 태블릿+창작자 세그먼트가 성장 동력과 일치한다.
- **기본값 대안**: 애플 생태계 사용자에게 실질적 경쟁자는 Apple 메모다 — 무료·기본 설치·동기화로 캡처 단계는 이미 해결해준다. 그러나 위키링크·그래프·평문 소유권이 없어 "쌓인 자료를 연결하고 되찾는" 단계에서 한계가 명확하다. ArtObsidian은 이 지점("메모는 쌓이는데 연결이 안 된다")을 파고들어야 한다.
- **위험**: Obsidian이 무료+플러그인으로 사실상 어떤 워크플로든 조립 가능하다는 점이 최대 위협. "옵시디언에서 되는데 왜 이 앱?"에 답할 수 있어야 한다. 시장 규모 수치는 조사기관별 편차가 커 정량 근거로 과신하면 안 된다.
- **차별화 가능성**: (1) 옵시디언 볼트 호환으로 갈아타기 비용 제로 — 경쟁이 아닌 보완 포지션, (2) 설정 없이 바로 되는 미술 특화 UX(이미지 첨부·레퍼런스 브라우징 + 위키링크·그래프), (3) SwiftUI 네이티브 iPad 경험 — Eagle(데스크톱 전용)·Milanote(웹 기반)가 못 채우는 지점.
