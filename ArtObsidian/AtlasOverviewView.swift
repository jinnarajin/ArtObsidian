import SwiftUI

// 화면 03 Atlas Overview — 클러스터 단위 전체 구조 (Figma 442:5586)
struct AtlasOverviewView: View {
    @State private var scale = "클러스터"

    var body: some View {
        ZStack(alignment: .topLeading) {
            GridBackground()
            ForEach(SampleData.clusterConnections, id: \.0.x) { line in
                Path { p in p.move(to: line.0); p.addLine(to: line.1) }
                    .stroke(Atlas.connection, lineWidth: 2)
            }
            ForEach(SampleData.clusters) { cluster in
                ClusterView(cluster: cluster)
                    .frame(width: cluster.frame.width, height: cluster.frame.height)
                    .position(x: cluster.frame.midX, y: cluster.frame.midY)
            }
            header
            footer
        }
        .background(Atlas.background)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) { QuickCaptureButton() }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("ATLAS OVERVIEW")
                .font(.title.weight(.semibold))
                .foregroundStyle(Atlas.textPrimary)
            Text("프로젝트 전체 구조 · 31%")
                .font(.footnote)
                .foregroundStyle(Atlas.textSecondary)
        }
        .padding(.horizontal, 32)
        .padding(.top, 18)
    }

    private var footer: some View {
        VStack {
            Spacer()
            HStack {
                Text("클러스터를 탭해 확대 · 빈 공간을 길게 눌러 새 아이디어")
                    .font(.caption)
                    .foregroundStyle(Atlas.textSecondary)
                Spacer()
                Picker("범위", selection: $scale) {
                    Text("전체").tag("전체")
                    Text("클러스터").tag("클러스터")
                    Text("아이디어").tag("아이디어")
                }
                .pickerStyle(.segmented)
                .frame(width: 300)
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 20)
        }
    }
}

struct ClusterView: View {
    let cluster: IdeaCluster
    private let columns = Array(repeating: GridItem(.fixed(42), spacing: 12), count: 4)

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(cluster.title)
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(Atlas.textPrimary)
            LazyVGrid(columns: columns, alignment: .leading, spacing: 14) {
                ForEach(0..<cluster.count, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Atlas.thumb)
                        .frame(width: 42, height: 44)
                }
            }
            Spacer(minLength: 0)
        }
        .padding(18)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Atlas.panel, in: RoundedRectangle(cornerRadius: 18))
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(cluster.highlighted ? Atlas.accent : Atlas.stroke,
                        lineWidth: cluster.highlighted ? 2 : 1)
        )
    }
}
