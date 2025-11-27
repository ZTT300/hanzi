# HanziKids 桌面与 iOS 版

一个面向小男孩的趣味汉字学习应用，围绕汽车、航天、奥特英雄三大主题，覆盖人教版小学六年级及以内常见汉字。包含故事导入、生字卡、笔顺提示和造句复述等练习。

## Windows 10 桌面版（Electron）
1. 安装 **Node.js 18+** 与 npm。
2. 进入 `windows-app` 目录执行 `npm install`，然后 `npm start` 即可在 Windows 10 桌面运行。
3. 若需生成离线安装包（EXE），执行 `npm run package`，默认输出在 `windows-app/HanziKids-win32-x64/` 目录。
4. Electron UI 内置“使用指南”和“打包成 EXE”按钮，方便小朋友或家长快速上手。

## iOS 版（SwiftUI）
1. 使用 **Xcode 15+** 新建 iOS SwiftUI App，名称可设为 `HanziKids`。
2. 将 `HanziKids` 目录下的 `*.swift` 文件拷贝进项目（建议保留 Models/Data/Views 分组）。
3. 在 `HanziKidsApp.swift` 中保持默认入口，预览或运行在 iOS 17+ 模拟器即可查看界面。
4. 需生成可安装包（IPA）时，请在 macOS/Xcode 环境按《BUILD.md》步骤创建项目、完成签名并 Archive/导出。默认导出的 `.ipa` 会保存在 Xcode Organizer 所示的 Archive 目录（如 `~/Library/Developer/Xcode/Archives/<日期>/`），也可在导出时改为桌面或自定义路径，详见《BUILD.md》。

## 功能速览
- **主题筛选**：汽车探险、航天梦、奥特英雄，配合对应的图标与颜色。
- **分级课程卡片**：展示年级、学习目标与关键生字预览。
- **任务故事**：将每课生字融入赛车、航天或奥特曼的情境中。
- **练写 Tab**：可翻页查看每个字的拼音、释义与笔顺提示。
- **生字闪卡**：点击按钮可展开应用词，方便组词造句。
- **复述挑战**：鼓励孩子用本课生字讲述任务汇报，巩固读写。

## 后续扩展建议
- 增加六个年级的完整生字表，并联动写字动画或 stroke-order GIF。
- 为三大主题增添任务进度与勋章系统，强化成就感。
- 接入本地化音频，支持拼音朗读与分解笔画音效。
