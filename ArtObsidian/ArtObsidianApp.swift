import SwiftUI

@main
struct ArtObsidianApp: App {
    var body: some Scene {
        WindowGroup {
            AtlasRootView()
                .preferredColorScheme(.dark)
        }
    }
}

// 상단 플로팅 탭바(보드/프로젝트/검색) — 시스템 TabView 사용
struct AtlasRootView: View {
    @State private var query = ""

    var body: some View {
        TabView {
            Tab("보드", systemImage: "square.grid.2x2") {
                NavigationStack { BoardView().toolbarBackgroundVisibility(.hidden, for: .navigationBar) }
            }
            Tab("프로젝트", systemImage: "book") {
                NavigationStack { AtlasOverviewView().toolbarBackgroundVisibility(.hidden, for: .navigationBar) }
            }
            Tab(role: .search) {
                NavigationStack {
                    ContentUnavailableView("검색", systemImage: "magnifyingglass",
                                           description: Text("제목·태그·노트로 아이디어를 찾습니다. (다음 이슈)"))
                        .background(Atlas.background)
                        .searchable(text: $query)
                }
            }
        }
    }
}
