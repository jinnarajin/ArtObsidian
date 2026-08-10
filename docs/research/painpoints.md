# 미술 창작자의 아이디어·레퍼런스 관리 페인포인트 조사

- 작성자: 리서치팀 (Claude)
- 작성일: 2026-08-10
- 문서 상태: 초안 (v0.1)
- 조사 범위: Obsidian 공식 포럼(예술가·이미지 관리 스레드), 창작자 개인 블로그(Substack) 등 영어권 커뮤니티의 실제 사용자 발언. Reddit(r/ArtistLounge, r/ObsidianMD)은 직접 접근이 차단되어 원문 인용에서 제외했고, 국내 커뮤니티(네이버 블로그·브런치·디시 등)는 검색에서 구체적 페인포인트 발언을 확보하지 못해 추가 조사 과제로 남김.

## 조사 방법

웹 검색("artist reference organization", "art idea capture", "obsidian artists images", "그림 레퍼런스 정리" 등) 후, 접근 가능한 스레드·글을 직접 열어 발언을 확인했다. 모든 인용에 출처 URL과 확인일(2026-08-10)을 붙였다. 인용은 **원문 인용**(짧은 verbatim) 또는 **요약-의역**으로 구분 표기.

---

## 1. 이미지+텍스트 혼합 기록의 어려움

노트 도구는 텍스트 중심이라, 이미지가 핵심 자료인 미술 사용자는 이미지를 넣는 것 자체를 포기하거나 우회한다.

- **원문 인용** — Flummic (Obsidian 포럼): "the Attachment-Management-Capabilities are lacking, causing me to mostly avoid adding images to my vault"
  - 출처: https://forum.obsidian.md/t/bases-for-attachment-management-images-etc/109563 (확인일 2026-08-10)
- **요약-의역** — 같은 스레드에서 Flummic은 첨부 이미지들을 속성과 함께 목록으로 보고 싶지만 이미지 파일은 Bases(데이터베이스 뷰)에 아예 잡히지 않는다고 토로. 다른 사용자는 Lightroom 등 외부 툴을 쓰라고 권함 — 노트 앱 안에서 해결이 안 된다는 방증.
  - 출처: 위와 동일 (확인일 2026-08-10)

**시사점:** 이미지를 텍스트 노트와 동급의 1급 시민으로 다루는 것(갤러리 뷰, 이미지 속성)이 미술용 위키의 차별점이 된다.

## 2. 재발견 실패 — 저장했지만 다시 못 찾음

이미지에는 태그·메타데이터를 붙일 수 없어, 모아둔 레퍼런스를 나중에 검색으로 되찾지 못한다.

- **원문 인용** — Drakemoor (Obsidian 포럼): "Looking for a way to tag image/photo files inside the Vault so that they can be easily searchable."
- **원문 인용** — Drakemoor, 파일명에 태그를 넣는 우회를 시도한 뒤: "that creates long paths and is very clumsy to organize and maintain."
- **원문 인용** — CawlinTeffid의 답변: "You can't tag them directly."
  - 출처(3건 공통): https://forum.obsidian.md/t/tag-images-photos-other-files/76866 (확인일 2026-08-10)

**시사점:** 이미지 자체에 태그·메모를 붙이고 검색되게 하는 기능이 재발견 실패를 직접 해결한다.

## 3. 산재된 저장소 · 한 폴더 덤핑

일단 아무 데나 저장하고, 컬렉션이 커지면 걸러내는 데 시간을 잃는다.

- **원문 인용** — Solo RPG Studio (Substack): "I saved everything—Pinterest finds, images from rulebooks, random artwork—into a single folder. I had a huge collection, but filtering through it was a mess."
- **요약-의역** — 같은 글에서, 정리가 안 되어 있으면 자료를 찾는 데 실제 작업(플레이) 시간을 빼앗긴다고 서술.
  - 출처: https://substack.solorpgstudio.com/p/collecting-digital-artwork (확인일 2026-08-10)

**시사점:** 캡처는 마찰 없이(일단 던져넣기), 정리는 나중에 가볍게 할 수 있는 인박스형 흐름이 필요하다.

## 4. 도구 이전 시 맥락 소실 (락인 불안)

레퍼런스·노트를 다른 도구로 옮기면 링크가 깨지고 첨부가 유실된다.

- **원문 인용** — itoldusoandso (Obsidian 포럼), Evernote에서 이전 후: "Now all pdfs and pictures show broken link"
- **원문 인용** — 같은 사용자: "coming from Evernote I didn't have to think about cleaning attached files and images"
  - 출처: https://forum.obsidian.md/t/newbie-questions-attachments-how-to-deal-with-them/80461 (확인일 2026-08-10)

**시사점:** 평문 .md + 로컬 이미지 파일이라는 개방 포맷(옵시디언 볼트 호환)은 신뢰를 얻는 핵심 설계다 — 현재 방침 유지.

## 5. 구조 설계의 막막함 — 작품·과정·영감을 어떻게 나눌지 모름

미술 노트는 작품 카탈로그, 과정 기록, 영감 수집이 섞여 있어 분류 체계를 세우다 지친다.

- **원문 인용** — Sinsi (Obsidian 포럼), 화가의 포트폴리오 볼트 구축 중: "I'm scratching my head as to how organize my notes"
  - 출처: https://forum.obsidian.md/t/portfolio-commonplace-book-vault-database-for-artists/107103 (확인일 2026-08-10)
- **요약-의역** — 미술관 가이드가 작품 노트 데이터베이스를 만들며, 작품 하나하나를 노트 단위로 삼을 때 이름 짓기와 분류 체계(taxonomy)가 매우 어렵다고 논의.
  - 출처: https://forum.obsidian.md/t/taxonomy-for-art-work-notes/15897 (확인일 2026-08-10)

**시사점:** 폴더 구조를 강요하지 말고, 태그·위키링크·유사도 관련 노트처럼 사후적으로 연결되는 구조가 창작자에게 맞는다.

## 6. 수집만 하고 활용 못 하는 압도감

영감을 모으기만 하면 새 작업 시작 시점에 오히려 길을 잃는다.

- **원문 인용** — Jordan Clark (Substack, 무드보드 워크플로): "when I dive into a new project, I don't feel so overwhelmed or lost because I already have a collection of ideas" — 큐레이션된 컬렉션이 없으면 압도되고 길을 잃는다는 반증적 서술.
  - 출처: https://jordanstellaire.substack.com/p/how-i-make-and-use-mood-boards (확인일 2026-08-10)

**시사점:** 프로젝트 단위로 레퍼런스를 다시 모아 보는 뷰(무드보드/컬렉션)가 수집→활용 전환을 돕는다.

---

## 종합 시사점

1. **이미지가 1급 시민이어야 한다.** 조사된 페인포인트의 절반(1·2·3번)이 "텍스트 노트 도구에서 이미지가 홀대받는 것"에서 나온다. ArtObsidian은 이미지 첨부에 태그·메모·검색을 붙이고 갤러리로 훑을 수 있어야 한다.
2. **캡처 마찰 최소화 + 사후 정리.** 저장 시 분류를 강요하면 한 폴더 덤핑으로 귀결된다. 인박스에 던져넣고, 태그·위키링크·유사도 추천으로 나중에 연결하는 흐름이 맞다.
3. **개방 포맷은 방어가 아니라 공격 포인트.** 도구 이전의 트라우마(4번)가 실재하므로 "평문 md + 옵시디언 호환"을 전면에 내세울 가치가 있다.
4. **구조는 창발적으로.** 엄격한 분류 체계 대신 링크·태그·관련 노트로 구조가 자라나게 하는 현재 방향(그래프 뷰, 유사도)이 5번 페인포인트와 정합적이다.

## 조사 한계 / 후속 과제

- Reddit(r/ArtistLounge, r/ObsidianMD)과 트위터/X는 크롤링 차단으로 원문 확인 불가 — 브라우저 기반 재조사 필요.
- 국내(네이버 블로그·브런치·디시) 발언은 이번 검색에서 구체 인용을 확보하지 못함 — 한국어 커뮤니티 심층 조사 별도 진행 권장.
