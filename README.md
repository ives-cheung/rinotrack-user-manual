# 农机自动驾驶软件使用手册

> 🚀 中英文双语版本 | Bilingual Chinese & English

## 📖 文档内容

这是农机自动驾驶软件的完整新手教程，包括：

- 📚 **7 个教程章节** - 从硬件到软件的完整指南
- 🌐 **中英文双语** - 支持中文和 English
- 📱 **响应式设计** - 适配各种设备
- 🔍 **全文搜索** - 快速查找内容

## 🔗 在线访问

- **中文版本**: https://ives-cheung.github.io/rinotrack-user-manual/zh/
- **英文版本**: https://ives-cheung.github.io/rinotrack-user-manual/en/

## 🎯 教程章节

1. ✅ 系统硬件组成 / System Hardware Components
2. ✅ 认识主界面 / Introducing the Main Interface
3. ✅ 通信配置 / Communication Configuration
4. ✅ 状态检查 / System Status Check
5. ✅ 创建作业 / Creating Your First Job
6. ✅ 导航线和自动驾驶 / Navigation Lines and Autonomous Driving
7. ✅ 更多设置 / More Settings

## 📁 项目结构

```
rinotrack-user-manual/
├── docs/
│   ├── zh/                 # 中文文档
│   │   ├── index.md
│   │   ├── 01-hardware.md
│   │   ├── 02-interface.md
│   │   ├── 03-communication.md
│   │   ├── 04-status.md
│   │   ├── 05-create-job.md
│   │   ├── 06-navigation.md
│   │   └── 07-settings.md
│   └── en/                 # 英文文档
│       ├── index.md
│       ├── 01-hardware.md
│       ├── 02-interface.md
│       ├── 03-communication.md
│       ├── 04-status.md
│       ├── 05-create-job.md
│       ├── 06-navigation.md
│       └── 07-settings.md
├── mkdocs.yml              # 中文版本配置
├── mkdocs-en.yml           # 英文版本配置
├── deploy.sh               # 部署脚本
└── README.md               # 本文件
```

## 🚀 本地开发

### 安装依赖
```bash
pip install mkdocs mkdocs-material
```

### 运行本地服务器

**中文版本** (端口 8000):
```bash
mkdocs serve -f mkdocs.yml
```

**英文版本** (端口 8001):
```bash
mkdocs serve -f mkdocs-en.yml -a 127.0.0.1:8001
```

访问 http://127.0.0.1:8000 和 http://127.0.0.1:8001

### 构建静态文件
```bash
bash deploy.sh
```

生成的 `site/` 文件夹包含所有静态 HTML 文件，可直接上传到任何 Web 服务器。

## 📤 部署到 GitHub Pages

### 第一次部署

1. 创建 GitHub 仓库：`rinotrack-user-manual`
2. 推送代码：
```bash
git add .
git commit -m "初始化农机自动驾驶软件文档"
git remote add origin https://github.com/ives-cheung/rinotrack-user-manual.git
git branch -M main
git push -u origin main
```

3. GitHub 仓库设置：
   - 进入 **Settings** → **Pages**
   - **Source** 选择 **Deploy from a branch**
   - **Branch** 选择 `main` 和 `/root` 文件夹
   - 等待几分钟自动部署

### 更新文档

修改后简单三步：
```bash
bash deploy.sh
git add .
git commit -m "更新文档内容"
git push
```

## 🔗 绑定自定义域名

如果你有自己的域名（如 `rinotrackusermanual.com`）：

1. 在 GitHub 仓库 Settings → Pages 中输入自定义域名
2. 在域名提供商添加 CNAME 记录：
   ```
   rinotrackusermanual.com  CNAME  ives-cheung.github.io
   ```
3. 等待 DNS 生效（通常 24 小时内）

## 📝 编辑指南

- 编辑 `docs/zh/` 文件夹中的 `.md` 文件修改中文内容
- 编辑 `docs/en/` 文件夹中的 `.md` 文件修改英文内容
- 修改后运行 `bash deploy.sh` 并 push 到 GitHub

## ✨ 技术栈

- **MkDocs** - 静态文档生成器
- **Material for MkDocs** - 专业的 Material Design 主题
- **GitHub Pages** - 免费托管

## 📞 支持

如有问题，请提交 Issue 或联系技术支持。

---

**Created with ❤️ by ives-cheung**
