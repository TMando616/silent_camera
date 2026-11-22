# silent_camera

シャッター音が鳴らず、色味フィルター5種とズームだけを持つシンプルなiOSカメラ。Swift / SwiftUI。アプリ名は未決（「無音カメラ」は仮称）。

仕様・決定事項・実装ステップは **docs/spec.md** にまとめてある。作業を始める前に必ず読むこと。進み具合と次のタスクは **docs/handoff.md** に書く。

## よく使うコマンド

```bash
xcodegen generate   # project.yml から .xcodeproj を作り直す（ファイルを足したら毎回）
xcodebuild -project SilentCamera.xcodeproj -scheme SilentCamera -destination 'id=E429B161-CAA4-424E-9197-0732F1CE1036' -derivedDataPath build build
```

## 構成

- `.xcodeproj` は XcodeGen で `project.yml` から生成する。git には `project.yml` だけを入れる（設定の差分が読みやすいため）。ビルド設定や Info.plist の項目は `project.yml` に書く
- バンドルID は `com.tmando616.silentcamera`（全アプリ共通の頭は `com.tmando616`。公開後は変えられない）
- 想定するファイル構成：`CameraService.swift` / `FilterEngine.swift` / `PhotoSaver.swift` / `CameraView.swift` / `PreviewView.swift` / `BannerAdView.swift`
- 将来イラスト変換アプリ（`../illust_app`）の `IllustrationKit` を読み込んで合算する予定。フィルターの入出力は `CIImage` にそろえる

## 守ること

- 撮影は `AVCapturePhotoOutput` を使わず、`AVCaptureVideoDataOutput` のフレームを切り出す（日本のiPhoneでは写真APIのシャッター音を消せないため）
- カメラはシミュレーターで動かない。カメラ部分はビルドが通るところまでを確認し、動作は実機で本人に確認してもらう
- 広告は最後のステップで入れる。開発中は必ずテスト用の広告IDを使う
- 未決事項（docs/spec.md の「未決事項」）は勝手に決めず、本人に確認する
- 修正のたびにビルドを通してからコミットする
- 説明は簡潔に、「なぜそうするか」をセットで。Laravelにたとえると伝わりやすい
