# AI 오케스트레이션 실험 계획 (2026-08-06, v2)

## 현재 상태 (인수인계, 2026-08-06)

- 참가자: 개발자(이 레포 주인, Claude Code Fable 5) + 디자이너(Codex GPT-sol)
- **완료**: 이 레포에 팀 지침·회고 템플릿·기록 리마인드 hook 세팅 / upstream 레포 생성·푸시 → https://github.com/jinnarajin/artobsidian-lab (AGENTS.md 공통 지침, CLAUDE.md는 @AGENTS.md import)
- **멘토와 결정 대기**: ① 머지 전략 (아래 비교표) ② upstream을 GitHub organization으로 transfer할지 (org면 레포 주인도 포크 가능해져 대칭 해결)
- **결정 후 순서**: lab의 docs/spec.md 둘이 합의해 작성(기능 목록·산출물 정의·합격 기준) → 각자 포크 → 독립 진행, 회고 로그만 upstream PR로 공유

디자이너 1명 + 개발자 1명이 같은 목표를 각자 다른 AI/방식으로 구현하고, 과정과 결과를 비교하며 배우는 실험. 이 문서는 지금까지의 합의와 보류 사항 정리.

## 확정된 것

1. **레포 구조: upstream + 포크**
   - 공유 레포(upstream)에 공통 뼈대만: CLAUDE.md, 폴더 규약, 회고 템플릿, 스펙
   - 각자 포크해서 독립 작업. 회고 로그는 upstream에 PR로 올려 중간과정 공유
   - 팀별 별도 레포는 배제 (산출물 교차 참조가 어려움)

2. **AI 에이전트 팀 구성** (각자 자기 포크에서 운영)
   - 리서치/기획팀 → `docs/research/`, `docs/prd/`
   - 디자인팀 → `design/`
   - 개발팀 → 소스, `docs/specs/`
   - 검증팀 → `qa/` (합격 기준을 **먼저** 정의 후 검증)

3. **과정 기록: AI 활용 피드백 문서** (`docs/ai-feedback/TEMPLATE.md`)
   - 세션마다 `YYYY-MM-DD-이름-주제.md`로 작성
   - 0~4번(도구, 프롬프트 원문, 시행착오)은 AI가 초안, 5번 회고는 본인이 작성
   - 토큰 분석은 `/explain-usage` 활용

4. **시작 전 upstream 스펙에 명문화할 것** (bake-off 실무 교훈)
   - 기능 목록 + 단계별 산출물 정의 (예: "기획 산출물 = 경쟁사 비교표 + 우선순위 + 로드맵")
   - 합격 기준 (qa/ 체크리스트 — 최종 머지 게이트로 사용)
   - 데이터 포맷 규약 (평문 .md, vault/ 구조) — 구현이 달라도 이식 가능하게

## 보류: 머지 전략 (멘토 상의 후 결정)

| 비교 항목 | ① 단계별 머지 | ② 끝까지 따로 + 최종 1회 머지 |
|---|---|---|
| 배움의 폭 | 자기 전문 분야만 채택되기 쉬움 → 비전문 분야 경험 소멸 | 비전문 분야를 끝까지 AI로 돌파 → 배움 극대화 |
| 비교 데이터 품질 | 머지 후 단계는 공통 베이스 → 측정 오염 | 전 단계 독립 표본, 끝까지 유효 |
| 오류 다양성 | 일찍 수렴 → 다르게 틀려볼 기회 상실 | 유지 → 토론 소재 풍부 |
| 결과물 완성도 | 단계마다 나은 쪽 채택 → 최종 품질 유리 | 최종 선택+이식 비용, 완성 지연 |
| 머지 비용 | 여러 번 작게, 단 전제 변경 혼란 위험 | 한 번 크게, 예측 가능 |
| 운영 난이도 | 매 단계 채택 합의 필요 | 규칙 단순: 로그만 교환, 산출물 안 가져옴 |
| 맞는 목표 | 좋은 제품 하나를 빨리 | 배움과 비교 실험 |

- Claude 추천: 배움이 목표인 이번 라운드는 ②. 근거: 병렬 작업 실무 표준("전부 완료 전 머지 금지" + 테스트를 머지 게이트로), 오류 다양성 보존이 집단 학습량을 높인다는 연구
- ②로 확정 시 upstream CLAUDE.md에 추가할 규칙: "단계 경계에서는 회고 로그만 교환한다. 상대 산출물을 자기 작업에 직접 가져오지 않는다. 머지는 전 단계 완료 후 한 번만."
- 최종 머지 절차: 비교 리뷰 → 베이스 선택 → 좋은 부분 이식 → qa/ 체크리스트를 양쪽에 동일 적용 (게이트)

## 참고 자료

- [병렬 에이전트 PR 머지 규칙 — Autonoma](https://getautonoma.com/blog/parallel-ai-agent-prs)
- [병렬 AI 에이전트 운영 5가지 교훈 — DEV](https://dev.to/battyterm/5-lessons-from-running-ai-coding-agents-in-parallel-53on)
- [오류 다양성 보존과 학습 — arXiv](https://arxiv.org/pdf/2502.16411)
- [Human-Human-AI 협업 학습 연구 — arXiv](https://arxiv.org/pdf/2601.12134)
- [Claude Code 프롬프트 실험 (GPTers)](https://www.gpters.org/nocode/post/claude-code-prompt-experiment-CwWGIFRRgOAbia8)
- [멀티 에이전트 워크스페이스 — Augment Code](https://www.augmentcode.com/guides/how-to-run-a-multi-agent-coding-workspace)
