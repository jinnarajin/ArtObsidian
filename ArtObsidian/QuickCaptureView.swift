import SwiftUI
import PhotosUI

// 화면 04 Quick Capture — 새 아이디어 시트 (Figma 442:5587)
struct QuickCaptureView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var note = ""
    @State private var photoItem: PhotosPickerItem?
    @State private var photo: Image?

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("NEW IDEA")
                .font(.caption.weight(.semibold))
                .foregroundStyle(Atlas.textSecondary)
            Text("떠오른 감각을 붙잡기")
                .font(.title.weight(.semibold))
                .foregroundStyle(Atlas.textPrimary)
                .padding(.top, 10)

            PhotosPicker(selection: $photoItem, matching: .images) {
                ZStack {
                    RoundedRectangle(cornerRadius: 18).fill(Atlas.thumb.opacity(0.6))
                    if let photo {
                        photo.resizable().scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                    } else {
                        Text("사진을 놓거나 탭하여 선택")
                            .font(.callout.weight(.semibold))
                            .foregroundStyle(Atlas.textSecondary)
                    }
                }
                .frame(height: 250)
            }
            .buttonStyle(.plain)
            .padding(.top, 26)
            .onChange(of: photoItem) {
                Task {
                    if let data = try? await photoItem?.loadTransferable(type: Data.self),
                       let ui = UIImage(data: data) {
                        photo = Image(uiImage: ui)
                    }
                }
            }

            Text("NOTE")
                .font(.caption2.weight(.semibold))
                .foregroundStyle(Atlas.textSecondary)
                .padding(.top, 30)
            TextField("떠오른 생각을 적어두기", text: $note, axis: .vertical)
                .font(.callout)
                .foregroundStyle(Atlas.textPrimary)
                .padding(.top, 8)

            Divider().overlay(Atlas.stroke).padding(.top, 18)

            Text("PROJECT  ·  Project F")
                .font(.footnote)
                .foregroundStyle(Atlas.textSecondary)
                .padding(.top, 20)
            Text("#색채   #회화   + 태그")
                .font(.subheadline)
                .foregroundStyle(Atlas.tag)
                .padding(.top, 10)

            Spacer()

            HStack {
                Spacer()
                Button("취소") { dismiss() }
                    .buttonStyle(.bordered)
                Button("보드에 추가") { dismiss() }
                    .buttonStyle(.borderedProminent)
            }
        }
        .padding(36)
        .background(Atlas.panel)
        .preferredColorScheme(.dark)
    }
}

// 보드/오버뷰 툴바 공용 "+" 버튼
struct QuickCaptureButton: View {
    @State private var showCapture = false

    var body: some View {
        Button {
            showCapture = true
        } label: {
            Image(systemName: "plus")
        }
        .sheet(isPresented: $showCapture) {
            QuickCaptureView()
                .presentationDetents([.large])
        }
    }
}
