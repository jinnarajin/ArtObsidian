# "AI 냄새 안 나는" 디자인 레퍼런스 리서치

날짜: 2026-08-12 / 버전: v1 / 브랜치: design/2026-08-12 / 이슈: #7 트랙 A

## 0. 먼저 — "AI 냄새"란 무엇인가

AI 생성 디자인 특유의 티(tell)는 이미 널리 지적되고 있음:
- 보라~파랑 그라데이션, 다크모드 기본 + 네온 글로우 카드
- 글래스모피즘(유리 느낌 반투명 효과) 남발, 과한 라운딩(둥근 모서리)
- Inter 폰트 만능주의, "카드 3개 나란히" SaaS 랜딩 레이아웃
- 원인: AI가 학습 데이터의 "통계적 평균"을 뽑기 때문. 해결책은 **하나의 뚜렷한 스타일 방향을 정하고 끝까지 밀기** — "깔끔하고 모던하게"는 방향이 아니라 슬롭(slop)의 기본값
- 참고: [AI Slop Design 가이드](https://vibecodekit.dev/ai-slop-design), [AI 디자인 티 나는 폰트와 그라데이션](https://www.925studios.co/blog/ai-slop-design-tells), [왜 AI는 자꾸 보라 그라데이션 사이트를 만드나](https://prg.sh/ramblings/Why-Your-AI-Keeps-Building-the-Same-Purple-Gradient-Website)

## 1. 노트/위키 앱 중 디자인이 독특한 것들

### Obsidian 커뮤니티 테마 (가장 직접적인 레퍼런스)
- **Primary** — https://github.com/primary-theme/obsidian
  - 바우하우스 + 스칸디나비안 + "누렇게 바랜 잡지 종이" 조합. 따뜻한 크림색 배경, 손맛 나는 컬러 블록.
  - 왜 AI 냄새가 안 나나: 인쇄물·아날로그에서 온 색이라 화면용 네온·그라데이션이 전혀 없음. "종이 위 위키"라는 ArtObsidian 컨셉과 가장 잘 맞음.
- **Minimal** — https://minimal.guide
  - 콘텐츠만 남기고 UI를 지우는 접근. 화려하진 않지만 "장식 제로"라는 뚜렷한 태도.
- **Things 테마** — Things 3 앱에서 영감. 절제된 타이포와 은은한 포인트 컬러.
- 테마 415개 목록: [obsidianstats.com/themes](https://www.obsidianstats.com/themes), [사용자 투표 Top 35](https://www.knowledgeecology.me/top-35-best-obsidian-themes-as-decided-by-its-users/)

### 앱들
- **Bear** — https://bear.app
  - 애플 전용 마크다운 노트. 텍스트 렌더링이 경쟁 앱 중 가장 아름답다는 평 ([XDA 리뷰](https://www.xda-developers.com/bear-is-the-best-note-taking-app-and-its-not-even-close/)).
  - 왜 안 나나: 손그림 느낌의 마스코트 일러스트, 직접 만든 테마 팔레트, 편집기 한 화면에 모든 공을 들이는 장인 정신. 시스템 폰트가 아니라 자체 서체 튜닝.
- **Craft** — https://craft.do
  - 문서 자체를 "디자인된 페이지"처럼 보이게 하는 앱. 애플 디자인 어워드 수상.
  - 왜 안 나나: 애니메이션·여백·계층이 네이티브 SwiftUI 감성으로 정교함. 웹 SaaS 느낌이 아니라 "애플 플랫폼 시민" 느낌.
- **mymind** — https://mymind.com
  - 비주얼 저장소. 저장물이 곧 화면이 되는 극단적 미니멀리즘.
  - 왜 안 나나: UI 크롬(버튼·패널)을 거의 없애고 콘텐츠 이미지가 화면을 채움. 세리프 타이포 + 감성적인 카피라이팅으로 "사람이 만든 물건" 티가 남.
- **Muse** — https://museapp.com
  - iPad 우선의 공간형(spatial) 사고 도구. 카드들을 손으로 배치하는 촉각적 인터랙션.
  - 왜 안 나나: "잉크와 종이" 메타포, 연구 논문(Ink & Switch)에서 출발한 독자적 인터랙션 설계. iPad에서 그림 자료 다루는 ArtObsidian에 인터랙션 레퍼런스로 최적.
- **iA Writer** — https://ia.net/writer
  - 자체 서체(iA Writer 트리오)까지 직접 설계한 타이포그래피 원리주의. "폰트 하나, 색 두 개"의 극단적 절제가 오히려 강한 개성.

## 2. 아트/크리에이티브 도구 UI 레퍼런스

- **Procreate** — https://procreate.com
  - "도구가 사라지고 캔버스만 남는" UI 철학. 제스처 우선, 화면 클러터 최소화 ([디자인 분석](https://blakecrosley.com/guides/design/procreate)).
  - 왜 안 나나: 웹 관습이 아니라 iPad 터치·펜슬에서 출발한 인터페이스. ArtObsidian도 "자료를 보는 데 방해 안 되는 UI"라는 같은 원칙을 쓸 수 있음.
- **PureRef** — https://pureref.com
  - 작가들의 표준 레퍼런스 보드. UI가 거의 없음 — 이미지 500장을 깔아도 안 무거움 ([비교](https://www.refern.app/alternatives/best-pureref-alternatives)).
  - 왜 안 나나: 기능이 곧 디자인. 장식 제로, 도구로서의 정직함.
- **Milanote** — https://milanote.com — 자유 캔버스 무드보드. 종이 카드·테이프 같은 아날로그 은유가 살아있음.
- **Are.na** — https://www.are.na
  - 느린 큐레이션 커뮤니티. 의도적으로 투박한 흑백 브루탈리즘 UI.
  - 왜 안 나나: 알고리즘 피드·추천을 거부하는 태도가 디자인에 그대로 드러남. 예술계 사용자층이 두터움.
- **Cosmos** — https://cosmos.so — 크리에이티브 특화 저장 피드. mymind처럼 콘텐츠가 UI를 대신함.
- **Kosmik** — https://kosmik.app — 공간형 캔버스, 아날로그 질감의 브랜딩.

## 3. 스타일 방향 4가지 제안

### A. 에디토리얼 / 인쇄물 (추천 1순위)
- 핵심: 세리프 헤드라인 + 좁은 본문 폭, 종이색(크림/웜그레이) 배경, 얇은 괘선(hairline rule), 잡지 같은 캡션·번호 매기기
- 대표: Obsidian **Primary** 테마, mymind, iA Writer
- 왜 좋나: "미술 자료 위키 = 나만의 도록/화집"이라는 컨셉과 정확히 맞음. AI는 인쇄 전통에서 온 디테일(괘선, 행간, 소제목 위계)을 거의 안 씀.

### B. 도구적 미니멀 (tool-first)
- 핵심: UI 크롬 최소화, 모노크롬, 콘텐츠(그림)가 화면의 90%, 시스템 재질 활용
- 대표: Procreate, PureRef, Minimal 테마
- 왜 좋나: 그림 자료를 "보는" 앱이니 UI가 색을 가지면 자료 색과 싸움. 장식 없음 자체가 개성.

### C. 브루탈리즘 / 네오브루탈리즘
- 핵심: 굵은 검정 테두리, 단색 원색, 시스템 폰트 그대로, 그림자 대신 오프셋 블록 ([가이드](https://neubrutalism.com/), [사례](https://designlab.com/blog/examples-brutalism-in-web-design))
- 대표: Are.na, Bloomberg Businessweek, The Outline
- 왜 좋나: 그라데이션·글래스의 정반대라 AI 냄새 제로. 다만 장시간 자료 열람용으론 피로할 수 있음 — 포인트로만 차용 추천.

### D. 촉각적 아날로그 (tactile)
- 핵심: 종이 질감·필름 그레인 노이즈, 손글씨 느낌 포인트, 카드가 물리적 물건처럼 움직이는 인터랙션. 2026 트렌드도 "인간이 만들었음을 증명하는 질감" 방향 ([Fireart 트렌드](https://fireart.studio/blog/the-best-web-design-trends/))
- 대표: Muse, Milanote, Kosmik
- 왜 좋나: 그림 그리는 사람의 물성(스케치북, 마스킹 테이프) 감성과 연결. 남발하면 스큐어모피즘 키치가 되니 절제 필요.

## 4. ArtObsidian에 대한 결론 제안

**A(에디토리얼) 기반 + B(도구적 미니멀) 원칙 + D(질감) 소량**이 가장 유력한 조합:
- 배경은 순백이 아닌 종이색, 다크모드는 네이비/보라가 아닌 먹색(warm black)
- 제목용 세리프(예: 한글은 마루 부리, 영문은 개성 있는 세리프) + 본문은 가독성 우선 — Inter 금지
- 그림 자료가 뜨는 화면에서는 UI가 무채색으로 물러남 (Procreate 원칙)
- 라운딩·그림자·그라데이션 기본값 사용 금지, 대신 괘선과 여백으로 위계 표현
