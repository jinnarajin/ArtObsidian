import SwiftUI

// 샘플 데이터 — 파일 저장 연동은 다음 이슈에서. 위치·크기는 Figma 424-6084 좌표.
struct IdeaCard: Identifiable {
    let id = UUID()
    var title: String
    var tags: [String]
    var imageName: String
    var frame: CGRect            // 보드 좌표계(1366×1024 기준)
    var note: String = ""
    var date: String = "2026.08.22"
    var project: String = "Project F"
    var linked: [String] = []
}

struct IdeaCluster: Identifiable {
    let id = UUID()
    var title: String
    var frame: CGRect
    var count: Int = 8
    var highlighted: Bool = false
}

enum SampleData {
    static let boardCards: [IdeaCard] = [
        IdeaCard(title: "빛의 경계", tags: ["#회화", "#대비"], imageName: "CardLight",
                 frame: CGRect(x: 90, y: 160, width: 220, height: 300)),
        IdeaCard(title: "새벽의 톤", tags: ["#사진", "#영감"], imageName: "CardDawn",
                 frame: CGRect(x: 360, y: 130, width: 280, height: 190)),
        IdeaCard(title: "인체 크로키", tags: ["#드로잉"], imageName: "CardCroquis",
                 frame: CGRect(x: 690, y: 170, width: 210, height: 270),
                 note: "쇄골과 견갑의 반대 방향을\n한 화면에서 비교한다.",
                 linked: ["손의 움직임 기록", "재료의 온도"]),
        IdeaCard(title: "도시의 리듬", tags: ["#사진", "#프로젝트F"], imageName: "CardCity",
                 frame: CGRect(x: 955, y: 125, width: 285, height: 220)),
        IdeaCard(title: "재료 실험", tags: ["#재료", "#질감"], imageName: "CardMaterial",
                 frame: CGRect(x: 300, y: 505, width: 250, height: 330)),
        IdeaCard(title: "움직임 기록", tags: ["#메모"], imageName: "CardMotion",
                 frame: CGRect(x: 610, y: 490, width: 300, height: 205)),
        IdeaCard(title: "붉은 점", tags: ["#색채", "#관찰"], imageName: "CardRedDot",
                 frame: CGRect(x: 970, y: 430, width: 230, height: 320)),
    ]

    // 카드 사이 연결선 (시작점, 끝점) — 보드 좌표계
    static let connections: [(CGPoint, CGPoint)] = [
        (CGPoint(x: 270, y: 346), CGPoint(x: 460, y: 346)),
        (CGPoint(x: 710, y: 431), CGPoint(x: 880, y: 431)),
    ]

    static let clusters: [IdeaCluster] = [
        IdeaCluster(title: "빛 연구", frame: CGRect(x: 110, y: 170, width: 260, height: 190)),
        IdeaCluster(title: "인체 연구", frame: CGRect(x: 450, y: 140, width: 320, height: 250), highlighted: true),
        IdeaCluster(title: "색채 실험", frame: CGRect(x: 890, y: 180, width: 300, height: 190)),
        IdeaCluster(title: "재료 아카이브", frame: CGRect(x: 230, y: 520, width: 300, height: 230)),
        IdeaCluster(title: "도시 관찰", frame: CGRect(x: 660, y: 500, width: 260, height: 210)),
        IdeaCluster(title: "미분류", frame: CGRect(x: 1040, y: 520, width: 230, height: 250)),
    ]

    static let clusterConnections: [(CGPoint, CGPoint)] = [
        (CGPoint(x: 370, y: 261), CGPoint(x: 450, y: 261)),
        (CGPoint(x: 770, y: 261), CGPoint(x: 890, y: 261)),
        (CGPoint(x: 601, y: 390), CGPoint(x: 601, y: 500)),
    ]
}
