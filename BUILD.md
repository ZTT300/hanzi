# 构建与导出指南（iOS & Windows）

本仓库包含 iOS 版 SwiftUI 代码和 Windows 10 桌面版 Electron 代码。

## iOS：生成 IPA
当前仓库提供了 SwiftUI 界面与示例课程数据，但不包含 `.xcodeproj`。要生成可安装的 iOS 包（IPA），请在 macOS 上按以下步骤操作：

1. 打开 **Xcode 15 或更高**，选择 **File ▸ New ▸ Project…**，模板选 *iOS ▸ App*。
2. Product Name 输入 `HanziKids`，Interface 选择 *SwiftUI*，Language 选择 *Swift*。
3. 创建后，将本仓库 `HanziKids` 目录中的 `Data/`、`Models/`、`Views/` 以及 `HanziKidsApp.swift` 拖入 Xcode（建议勾选 *Create groups*）。
4. 确认 `HanziKidsApp` 目标的 *iOS Deployment Target* 设置为 **17.0** 或更高。
5. 连接设备或设置签名：真机安装需在 *Signing & Capabilities* 选择团队 Team 并信任证书；模拟器可直接运行。
6. 选择模拟器或真机点击 *Run* 验证界面。
7. 需要导出 IPA：在 *Any iOS Device (arm64)* 方案下执行 `Product ▸ Archive`，在 Organizer 里 *Distribute App* 选择 **Ad Hoc/TestFlight/App Store** 并完成导出。

### iOS 安装包路径
- **Archive 产物**：`~/Library/Developer/Xcode/Archives/<日期>/HanziKids <时间>.xcarchive`。
- **IPA 导出位置**：在 Organizer *Distribute App* 时可自选目录；若未修改，Xcode 会在 `.xcarchive` 同级目录下生成 `HanziKids.ipa`（或 `HanziKids-<配置>.ipa`）。
- **快速定位**：在 Organizer 中选中 Archive，右键 *Show in Finder* 可跳转到实际目录，再把 IPA 保存到该目录或自定义路径（如 `~/Desktop/HanziKids.ipa`）。

> 由于本环境缺少 macOS/Xcode，无法直接生成 `.ipa`。请在本地或 CI 的 macOS 机器上完成导出。

## Windows 10：生成可执行程序
`windows-app` 目录提供 Electron 版本，适合在 Windows 10 上运行或打包。

1. 安装 **Node.js 18+** 与 npm。
2. 进入 `windows-app` 执行 `npm install`（下载 Electron 依赖）。
3. 运行 `npm start` 查看开发版窗口。
4. 运行 `npm run package` 可生成便于拷贝的可执行目录，默认输出在 `windows-app/HanziKids-win32-x64/`（含 `HanziKids.exe`）。
5. 如需自定义图标或签名，可在 `electron-packager` 命令中添加 `--icon` 或使用 Windows 代码签名工具。

> 如果企业环境限制访问 npm registry，请在可联网的机器上提前下载依赖或配置内部镜像再运行上述命令。
