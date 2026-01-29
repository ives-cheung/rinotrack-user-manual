#!/bin/bash

# 农机自动驾驶软件文档部署脚本

echo "🔨 开始构建文档..."

# 设置 Python 环境
PYTHON="/Users/ives0/ivescode/.venv/bin/python"
MKDOCS="$PYTHON -m mkdocs"

# 清空旧的 site 目录
rm -rf site/

# 构建中文版本
echo "📝 构建中文版本..."
$MKDOCS build -f mkdocs.yml

# 构建英文版本
echo "📝 构建英文版本..."
$MKDOCS build -f mkdocs-en.yml

# 合并两个版本的 site 到一个根目录
echo "🔗 合并文档版本..."
mkdir -p site_merged
cp -r site/zh/* site_merged/ 2>/dev/null || true
mkdir -p site_merged/en
cp -r site/en/* site_merged/en/ 2>/dev/null || true

# 创建根目录的跳转页面
cat > site_merged/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url=zh/">
    <title>农机自动驾驶软件文档</title>
</head>
<body>
    <p>正在重定向到中文版本... / Redirecting to Chinese version...</p>
    <a href="zh/">中文版本</a> | <a href="en/">English Version</a>
</body>
</html>
EOF

# 移动合并后的文件夹
rm -rf site
mv site_merged site

echo "✅ 构建完成！"
echo ""
echo "📂 文件结构:"
echo "  site/index.html  - 首页跳转"
echo "  site/zh/         - 中文版本"
echo "  site/en/         - 英文版本"
