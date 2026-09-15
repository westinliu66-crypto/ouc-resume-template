# OUC LaTeX Resume Template · 中国海洋大学简历模板

[![Build Resume](https://github.com/westinliu66-crypto/ouc-resume-template/actions/workflows/build.yml/badge.svg)](https://github.com/westinliu66-crypto/ouc-resume-template/actions/workflows/build.yml)

中国海洋大学（OUC）一页纸 LaTeX 简历模板。左上角为海大校徽 + 中英文校名，A4 单页，XeLaTeX 编译。

> 模板基于 [maksymilan/zju-resume-template](https://github.com/maksymilan/zju-resume-template) 修改，感谢原作者。校徽、配色已替换为中国海洋大学元素。

## 效果

编辑 `CV.tex` 并推送后，由 GitHub Actions 自动编译生成 PDF（见下方使用步骤），首次编译完成后即可在 Actions 页面下载预览。

## 使用步骤（无需本地安装 LaTeX）

1. **Fork 本项目**（或直接使用本仓库）
2. **修改 `CV.tex`**：把所有 `【】` 占位符替换成你的真实内容；`avatar.jpg` 替换为你的证件照（保持文件名不变即可）
3. **提交推送**：Commit + Push 后，GitHub Actions 自动开始编译
4. **下载简历**：
    * 点击仓库上方的 **Actions** 标签页
    * 左侧选择 **Build Resume** 工作流，点击最新一次运行（绿色对勾）
    * 页面底部 **Artifacts** 区域下载 **CV-PDF**


## 需要替换的内容清单

| 文件 / 位置 | 说明 |
|---|---|
| `CV.tex` 中的 `【】` 占位符 | 姓名、联系方式、教育背景、项目经历等全部内容 |
| `avatar.jpg` | 右上角证件照（原图建议 3:4 比例） |
| `ouc.jpg` | 左上角校徽（已内置海大官方校徽，无需更换） |

## 在线编辑与编译 (GitHub Codespaces)

1. 点击仓库页 Code → Codespaces 标签，启动云端环境
2. 等待环境初始化（首次约 3-5 分钟，自动安装 LaTeX）
3. 终端执行 `make` 编译，得到 `CV.pdf`

## 本地编译（可选）

需要 XeLaTeX（TeX Live 完整版）。字体不上传到仓库（体积约 21MB），编译前需要放到对应目录：

```bash
mkdir -p fonts/hansans fonts/Main
# 下载思源黑体（Noto Sans SC）
curl -L -o fonts/hansans/NotoSansSC-Regular.ttf https://raw.githubusercontent.com/maksymilan/zju-resume-template/master/fonts/hansans/NotoSansSC-Regular.ttf
curl -L -o fonts/hansans/NotoSansSC-Bold.ttf   https://raw.githubusercontent.com/maksymilan/zju-resume-template/master/fonts/hansans/NotoSansSC-Bold.ttf
# 下载西文字体（TeX Gyre Termes）
curl -L -o fonts/Main/texgyretermes-regular.otf https://raw.githubusercontent.com/maksymilan/zju-resume-template/master/fonts/Main/texgyretermes-regular.otf
curl -L -o fonts/Main/texgyretermes-bold.otf    https://raw.githubusercontent.com/maksymilan/zju-resume-template/master/fonts/Main/texgyretermes-bold.otf
make
```

## License

模板结构延续原项目，仅供学习与求职使用。
