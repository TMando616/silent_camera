# ハンドオフ資料：無音カメラ（仮称）

最終更新: 2026-11-22

## 現在地

- 実装ステップ1（プロジェクト作成）のうち、XcodeGen でのプロジェクト作成とシミュレーターでのビルド・仮の画面まで完了
- バンドルID：`com.tmando616.silentcamera`、iOS 17以上（仮）、iPhone のみ・縦向き
- Info.plist にカメラと写真保存（追加のみ）の許可文言を入れた。ATT と AdMob の項目は広告のステップで足す

## 次のタスク

- ステップ1の残り：実機で Hello World を起動する。本人が Xcode に Apple ID を登録し、iPhone をデベロッパモードにしてから。登録後に `project.yml` の `DEVELOPMENT_TEAM` を入れる
- ステップ2：`CameraService`（AVCaptureSession の管理）と権限リクエスト、プレビュー表示。コードはリモートでも書けるが、動作確認は実機が要る
