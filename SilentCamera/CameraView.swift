import SwiftUI

/// 撮影画面。ステップ2でカメラのプレビューを入れる（今は起動確認用の仮の画面）
struct CameraView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("無音カメラ")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CameraView()
}
