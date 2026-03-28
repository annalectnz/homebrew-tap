<div align="center">

```
   ___      _              ___
  / __|_  _| |__  ___ _ __|   \ __ _ ___
 | |  | || | '_ \/ -_) '_| |) / _` / _ \
 | |__|\_, | .__/\___|_| |___/\__,_\___/
  \____|__/|_|
```

# CyberCultivation 赛博修仙

**以 Token 证道，用 AI 修仙**

*Turn your AI token consumption into a cultivation journey.*

[![Release](https://img.shields.io/github/v/release/leefufufufufu-rgb/homebrew-tap?style=flat-square&label=version)](https://github.com/leefufufufufu-rgb/homebrew-tap/releases)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey?style=flat-square)]()
[![Claude Code](https://img.shields.io/badge/powered%20by-Claude%20Code-blueviolet?style=flat-square)]()

</div>

---

一个终端修仙游戏，将你使用 Claude Code 编程时的 Token 消耗转化为修仙进度。

A terminal RPG that transforms your Claude Code sessions into a cultivation experience.

> **⚠️ 仅支持 Claude Code 自动追踪 Token / Only Claude Code auto-tracking is supported.**
> 
> 灵气来源于真实的 Claude Code 对话记录，防作弊机制确保无法手动伪造。
> Spirit energy comes from real Claude Code transcripts — anti-cheat prevents fabrication.

---

## 📦 安装 Install

### 方式一：Homebrew（海外/有代理 Overseas）

```bash
brew install leefufufufufu-rgb/tap/cx
```

### 方式二：国内手动下载 China Manual Download

1. 浏览器打开（需登录Gitee）：https://gitee.com/lfmcode/cx-release/releases/v1.0.0
2. 下载对应架构的文件：
   - Apple Silicon (M1/M2/M3/M4): `cx-v1.0.0-aarch64-apple-darwin.tar.gz`
   - Intel Mac: `cx-v1.0.0-x86_64-apple-darwin.tar.gz`
3. 终端执行：

```bash
tar xzf cx-v1.0.0-aarch64-apple-darwin.tar.gz   # 换成你下载的文件名
sudo mv cx /usr/local/bin/
codesign -s - /usr/local/bin/cx
```

### 方式三：GitHub Release（海外/有代理）

```bash
export https_proxy=http://127.0.0.1:7890  # 换成你的代理
curl -L https://github.com/leefufufufufu-rgb/homebrew-tap/releases/download/v1.0.0/cx-v1.0.0-aarch64-apple-darwin.tar.gz | tar xz
sudo mv cx /usr/local/bin/
codesign -s - /usr/local/bin/cx
```

### Windows

从 [GitHub Release](https://github.com/leefufufufufu-rgb/homebrew-tap/releases) 下载 `cx-v1.0.0-x86_64-pc-windows-msvc.zip`，解压后将 `cx.exe` 加入 PATH。

---

## 🚀 快速开始 Quick Start

```bash
cx init              # 创建档案+灵宠盲盒 / Create profile + summon pet
cx install-hooks     # 安装Claude Code Hook / Install hook
cx dz                # 打坐修炼(TUI) / Meditate
cx chat              # 和灵宠聊天 / Chat with pet
cx status            # 全景面板 / Dashboard
```

---

## ✨ 功能 Features

| | 功能 Feature | 说明 Description |
|---|---------|-------------|
| 🧘 | 打坐TUI / Meditation | ASCII动画 + 境界粒子特效 / Realm-specific particle effects |
| 🐾 | 灵宠 / Spirit Pet | 64种组合, LLM驱动人格 / 64 combos, LLM-powered personality |
| 🔮 | 观察记忆 / Memory | 灵宠记住你的习惯 / Pet remembers your habits |
| ⚡ | Token追踪 / Tracking | Claude Code Hook 自动记录 / Auto via stop hook |
| 🏔️ | 五大境界 / 5 Realms | 练气→筑基→金丹→元婴→化神 |
| 🎯 | 44奇遇 / Encounters | 随机事件 + 保底系统 / With pity system |
| 🏆 | 收集 / Collections | 49称号 + 36法宝 + 9神通 + 丹药 |
| 📅 | 签到 / Check-in | 连续奖励 + 回归补偿 / Streak + comeback |
| 🌍 | 双语 / Bilingual | 中文 / English |
| 🎨 | 主题 / Theme | 深色 / 浅色终端 Dark / Light |

---

## 🐾 灵宠对话 Pet Chat

```bash
cx chat    # 首次自动引导配置API / Guided API setup on first run
```

支持 Supports: DeepSeek · GLM · Kimi · Qwen · OpenAI · Claude

灵宠会**记住**你的习惯、**主动**开话题、**进化**性格——每轮不到 ¥0.001。
Pet **remembers** habits, **initiates** topics, **evolves** — less than $0.001/round.

---

## 🎮 全部命令 Commands

| 命令 Command | 说明 Description |
|---------|-------------|
| `cx init` | 创建档案 / Create profile |
| `cx dz` | 打坐TUI / Meditation |
| `cx chat` | 灵宠对话 / Pet chat |
| `cx pet` | 灵宠档案 / Pet profile |
| `cx status` | 全景面板 / Dashboard |
| `cx bag` | 背包(可使用丹药) / Inventory |
| `cx log` | 修炼日志 / Cultivation log |
| `cx poster` | 灵宠海报 / Meme card |
| `cx namecard` | 修仙名片 / Shareable card |
| `cx bestiary` | 灵宠图鉴 / Collection |
| `cx install-hooks` | 安装Hook / Install hook |
| `cx quickstart` | 新手引导 / Tutorial |
| `cx about` | 关于+打赏 / About |

---

## ⚙️ 设置 Settings

```bash
cx config set lang en        # English
cx config set lang ch        # 中文
cx config set theme light    # 浅色终端 Light terminal
cx config set theme dark     # 深色终端 Dark terminal
cx config list               # 查看全部 View all
```

---

## ❓ 常见问题 FAQ

### macOS 提示"无法打开/已损坏" / "cannot be opened/damaged"

```bash
codesign -s - /usr/local/bin/cx
# 或者 / or:
xattr -d com.apple.quarantine /usr/local/bin/cx
```

### Homebrew 提示 Command Line Tools 过旧

```bash
sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install
# 安装完成后重试 / After install, retry:
brew install leefufufufufu-rgb/tap/cx
```

### Homebrew 下载超时（国内网络）

Homebrew 从 GitHub 下载，国内需代理：

```bash
export https_proxy=http://127.0.0.1:7890
brew install leefufufufufu-rgb/tap/cx
```

或直接从 Gitee 手动下载（见上方"方式二"）。

### cx dz 打坐界面颜色异常

切换主题适配你的终端背景色：

```bash
cx config set theme light    # 浅色/白色终端
cx config set theme dark     # 深色/黑色终端（默认）
```

### cx chat 报错 401 / API Key 无效

```bash
cx chat
# 输入 /config reset 重新配置
```

或手动设置：

```bash
cx config set llm.provider deepseek
cx config set llm.base_url https://api.deepseek.com/v1
cx config set llm.api_key sk-xxx
cx config set llm.model deepseek-chat
```

### Stop hook error / absorb-hook 报错

Claude Code 的 stop hook 偶尔超时是正常的，不影响使用。Token 会在下次成功时补录。

### Windows 运行报错

确保解压后的 `cx.exe` 所在目录在系统 PATH 中。在 PowerShell 中运行：

```powershell
$env:Path += ";C:\path\to\cx"
cx init
```

---

## 🔒 隐私 Privacy

- 所有数据本地存储(SQLite) / All data stored locally
- LLM仅用于灵宠对话(可选) / LLM only for pet chat (optional)
- 无遥测、无追踪、无广告 / No telemetry, tracking, or ads
- Token仅从Claude Code真实记录获取 / Verified transcripts only

---

## ☕ 支持作者 Support

如果觉得好玩，请作者喝杯咖啡：

- 🌐 [Patreon](https://patreon.com/leefu) (International)
- 🇨🇳 [爱发电](https://afdian.com/a/leefu) (中国)


### 推荐终端环境 Recommended Setup

最稳定测试环境 / Best tested environment:

- **终端 Terminal**: Ghostty 1.3+（推荐）/ iTerm2
- **主题 Theme**: Dark（深色背景）
- **系统 OS**: macOS 15.1+
- **Shell**: zsh

其他终端（Terminal.app、Warp、Hyper 等）基本兼容，浅色终端请先运行 `cx config set theme light`。

如遇显示问题，欢迎反馈：

- GitHub Issues: https://github.com/leefufufufufu-rgb/cyber-cultivation/issues
- 爱发电留言: https://afdian.com/a/leefu

## License

Proprietary. Free to use. 免费使用，闭源分发。
