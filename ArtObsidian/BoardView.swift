import SwiftUI

// 화면 01 무한 보드 + 화면 02 선택/인스펙터 (Figma 442:5584, 442:5585)
struct BoardView: View {
    @State private var cards = SampleData.boardCards
    @State private var selection: IdeaCard.ID?
    @State private var offset: CGSize = .zero
    @State private var dragStart: CGSize = .zero
    @State private var zoom: Double = 0.74

    private var selectedCard: IdeaCard? { cards.first { $0.id == selection } }

    var body: some View {
        ZStack(alignment: .topLeading) {
            canvas
            header
            footer
            if let card = selectedCard {
                InspectorPanel(card: card)
                    .frame(width: 378)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                    .padding(22)
                    .transition(.move(edge: .trailing).combined(with: .opacity))
            }
        }
        .background(Atlas.background)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) { QuickCaptureButton() }
        }
    }

    private var canvas: some View {
        GeometryReader { _ in
            ZStack(alignment: .topLeading) {
                GridBackground()
                ForEach(SampleData.connections, id: \.0.x) { line in
                    Path { p in p.move(to: line.0); p.addLine(to: line.1) }
                        .stroke(Atlas.connection, lineWidth: 2)
                }
                ForEach(cards) { card in
                    IdeaCardView(card: card, isSelected: card.id == selection)
                        .frame(width: card.frame.width, height: card.frame.height)
                        .position(x: card.frame.midX, y: card.frame.midY)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                selection = selection == card.id ? nil : card.id
                            }
                        }
                }
            }
            .scaleEffect(zoom, anchor: .topLeading)
            .offset(offset)
        }
        .contentShape(Rectangle())
        .gesture(
            DragGesture(minimumDistance: 20)
                .onChanged { offset = CGSize(width: dragStart.width + $0.translation.width,
                                             height: dragStart.height + $0.translation.height) }
                .onEnded { _ in dragStart = offset }
        )
        .simultaneousGesture(
            MagnifyGesture().onChanged { zoom = min(2, max(0.3, 0.74 * $0.magnification)) }
        )
        .onTapGesture { withAnimation(.snappy) { selection = nil } }
        .clipped()
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("ATLAS / PROJECT F")
                .font(.title.weight(.semibold))
                .foregroundStyle(Atlas.textPrimary)
            Text(selectedCard.map { "선택됨 · \($0.title)" } ?? "무한 보드 · \(cards.count)개 아이디어 · \(Int(zoom * 100))%")
                .font(.footnote)
                .foregroundStyle(Atlas.textSecondary)
        }
        .padding(.horizontal, 32)
        .padding(.top, 18)
    }

    private var footer: some View {
        VStack {
            Spacer()
            HStack(alignment: .bottom) {
                Text("⌘  드래그하여 이동  ·  핀치로 확대")
                    .font(.caption)
                    .foregroundStyle(Atlas.textSecondary)
                Spacer()
                Picker("확대", selection: $zoom) {
                    Text("31%").tag(0.31)
                    Text("74%").tag(0.74)
                    Text("100%").tag(1.0)
                }
                .pickerStyle(.segmented)
                .frame(width: 260)
                Spacer()
                MinimapView(cards: cards)
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 20)
        }
    }
}

struct IdeaCardView: View {
    let card: IdeaCard
    var isSelected = false

    var body: some View {
        Image(card.imageName)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(card.title)
                        .font(.callout.weight(.semibold))
                        .foregroundStyle(Atlas.textPrimary)
                    Text(card.tags.joined(separator: "  "))
                        .font(.caption)
                        .foregroundStyle(Atlas.textSecondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 18)
                .padding(.vertical, 16)
                .background(Atlas.background.opacity(0.88))
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay {
                if isSelected {
                    RoundedRectangle(cornerRadius: 20).stroke(Atlas.accent, lineWidth: 3)
                }
            }
            .shadow(color: .black.opacity(0.38), radius: 15, y: 12)
    }
}

struct InspectorPanel: View {
    let card: IdeaCard

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("INSPECTOR")
                .font(.caption.weight(.semibold))
                .foregroundStyle(Atlas.textSecondary)
            Text(card.title)
                .font(.title2.weight(.semibold))
                .foregroundStyle(Atlas.textPrimary)
                .padding(.top, 14)
            Text("\(card.date)  ·  \(card.project)")
                .font(.footnote)
                .foregroundStyle(Atlas.textSecondary)
                .padding(.top, 6)
            Divider().overlay(Atlas.stroke).padding(.vertical, 20)
            section("NOTE") {
                Text(card.note.isEmpty ? "메모 없음" : card.note)
                    .font(.callout)
                    .foregroundStyle(Atlas.textPrimary)
            }
            section("TAGS") {
                Text(card.tags.joined(separator: "   "))
                    .font(.subheadline)
                    .foregroundStyle(Atlas.tag)
            }
            section("LINKED IDEAS") {
                VStack(alignment: .leading, spacing: 6) {
                    ForEach(card.linked, id: \.self) { name in
                        Text("\(name)  ↗")
                            .font(.subheadline)
                            .foregroundStyle(Atlas.textPrimary)
                    }
                    if card.linked.isEmpty {
                        Text("연결된 아이디어 없음")
                            .font(.subheadline)
                            .foregroundStyle(Atlas.textSecondary)
                    }
                }
            }
            Spacer()
        }
        .padding(28)
        .background(Atlas.panel, in: RoundedRectangle(cornerRadius: 24))
        .overlay(RoundedRectangle(cornerRadius: 24).stroke(Atlas.stroke))
    }

    private func section(_ title: String, @ViewBuilder content: () -> some View) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.caption2.weight(.semibold))
                .foregroundStyle(Atlas.textSecondary)
            content()
        }
        .padding(.bottom, 26)
    }
}

struct MinimapView: View {
    let cards: [IdeaCard]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("MINIMAP")
                .font(.caption2.weight(.semibold))
                .foregroundStyle(Atlas.textSecondary)
            RoundedRectangle(cornerRadius: 8)
                .fill(Atlas.thumb)
                .frame(width: 92, height: 58)
                .frame(maxWidth: .infinity)
        }
        .padding(16)
        .frame(width: 188)
        .background(Atlas.panel, in: RoundedRectangle(cornerRadius: 18))
        .overlay(RoundedRectangle(cornerRadius: 18).stroke(Atlas.stroke))
    }
}

struct GridBackground: View {
    var body: some View {
        Canvas { context, size in
            var path = Path()
            for x in stride(from: 20.0, through: size.width + 200, by: 80) {
                path.move(to: CGPoint(x: x, y: 0))
                path.addLine(to: CGPoint(x: x, y: size.height + 200))
            }
            for y in stride(from: 16.0, through: size.height + 200, by: 80) {
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: size.width + 200, y: y))
            }
            context.stroke(path, with: .color(Atlas.grid), lineWidth: 1)
        }
    }
}
