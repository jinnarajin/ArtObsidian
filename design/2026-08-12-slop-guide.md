# AI 슬롭(slop) 회피 가이드

날짜: 2026-08-12 / 버전: v1 / 브랜치: design/2026-08-12 / 이슈: #7 트랙 B

## (a) AI 슬롭 증상 체크리스트

이 중 3개 이상 보이면 "AI 티 나는" 디자인일 가능성이 높음.

**색·질감**
- 보라→시안(indigo→purple) 그라데이션 — 가장 유명한 증상. 뿌리는 2019년 Tailwind 기본 팔레트(indigo-500)
- 다크 배경 + 네온 글로우(빛나는 테두리), 히어로 뒤 보라색 광원(radial gradient orb)
- 글래스모피즘(유리 느낌 반투명 패널) 남발
- 격자무늬(grid-line) 배경, 얇은 헤어라인 테두리 + 넓은 그림자 조합

**레이아웃**
- 아이콘 + 제목 + 두 줄 설명이 든 똑같은 카드 3~6개 나란히
- 중앙 정렬 헤드라인 + 위에 떠 있는 작은 알약(pill) 배지
- 카드 한쪽에만 두꺼운 색 테두리
- 24px 이상 과도하게 둥근 모서리, 카드 안에 카드 중첩
- 균일한 간격 — 리듬·변화 없음

**타이포그래피**
- Inter, Geist, Space Grotesk, Poppins 같은 "고르지 않은" 기본 폰트
- 폰트 하나로 전체 처리(위계 없음), 히어로에 거대한 이탤릭 세리프
- "01 / 02 / 03" 식 장식용 섹션 번호, 제목 위 작은 둥근 아이콘 상자

**카피·모션**
- "Build faster. Ship smarter" 류의 어느 제품에나 붙는 문구, 이모지·em-dash 남발, 버즈워드
- 맥박 치는 상태 점, 자동 스크롤 마퀴, 바운스 이징 — 목적 없는 애니메이션
- 호버 시 이미지 확대 변형

## (b) 회피 기법 + 프롬프트 반영 예시

원인부터: LLM은 학습 데이터의 **통계적 평균**을 내놓는다. 제약 없는 프롬프트 = 평균적 웹디자인 = 슬롭. 따라서 모든 기법의 핵심은 "결정을 사람이 먼저 내리고, AI에게는 실행만 시키기".

1. **디자인 시스템 문서를 먼저 만들어 고정** — 정확한 폰트명, 역할이 붙은 hex 값, 간격/radius 규칙, 금지 목록까지 명시한 문서를 두고 이후 모든 프롬프트가 이 파일을 참조.
   - 예: "레퍼런스 이미지를 분석해 디자인 시스템 파일로 추출해줘: 정확한 컬러 토큰, 타입 스케일과 폰트 페어링, 간격 단위, 모서리 radius, 그림자 깊이."
2. **금지 목록(negative prompt)** — AI가 끌리는 기본값을 명시적으로 차단.
   - 예: "금지: Inter/Roboto 폰트, 보라/인디고 그라데이션, 중앙 정렬 히어로, 아이콘 카드 3개 그리드, 글래스모피즘, 전면적 둥근 모서리, 이모지."
3. **막연한 형용사 → 구체 스펙** — "cool하게" 대신 레이아웃·라이브러리·동작을 지정.
4. **구체적 레퍼런스/스타일 앵커링** — "모던 핀테크"(평균 소환) 대신 특정 브랜드·시대·매체를 지정하고 명확한 방향 하나를 골라 토큰까지 잠금.
5. **단계 분리 워크플로** — (1) 텍스트로 기획 → (2) 스펙 전달 → (3) 골격 → 기능 → 폴리시 순으로 쪼갠 프롬프트. 한 번에 다 시키면 평균이 나옴.
6. **여러 초안 생성 후 선별 + 비평 루프** — 출력물은 항상 "초안"으로 취급해 슬롭 체크리스트로 비평·반복 수정.
7. **브랜드 결정 선행** — 제품이 무엇을 의미하는지(모티프·무드·영감 소스)를 먼저 정의.

## (c) 출처

- [impeccable.style/slop](https://impeccable.style/slop/) — 가장 상세한 슬롭 증상 카탈로그
- [Superdesign: How to Make AI UI Look Less Generic](https://superdesign.dev/blog/how-to-make-ai-ui-look-less-generic) — 5가지 구체 픽스 + 프롬프트 예시
- [925studios: AI Slop Fonts and Gradients](https://www.925studios.co/blog/ai-slop-design-tells) — Inter/Tailwind indigo의 유래
- [vibecodekit: AI Slop Design Fix Guide](https://vibecodekit.dev/ai-slop-design) — 방향 하나 골라 토큰 잠그기
- [SmoothUI: AI Design Slop](https://smoothui.dev/blog/ai-design-slop) — 통계적 평균 원인론
- [MindStudio: Design System Approach](https://www.mindstudio.ai/blog/claude-design-avoid-ai-slop-design-system) — 디자인 시스템 문서가 해법
- [Pixso: The Sameness Problem](https://pixso.net/articles/how-to-prevent-ai-from-making-all-uis-look-the-same/) — 레퍼런스 지정법
- [Visily: How to make AI designs less generic](https://www.visily.ai/blog/how-to-make-ai-designs-less-generic/) — 모티프/무드 기반 프롬프팅
- [prg.sh: Why Your AI Keeps Building the Same Purple Gradient Website](https://prg.sh/ramblings/Why-Your-AI-Keeps-Building-the-Same-Purple-Gradient-Website) — 보라 그라데이션 수렴 분석
