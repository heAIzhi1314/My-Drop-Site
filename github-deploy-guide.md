# GitHub Pages 部署指南

## 📋 部署步骤

### 1. 创建GitHub仓库
已为您打开GitHub创建仓库页面：https://github.com/new

**创建仓库时请注意：**
- 仓库名称建议：`ai-chat-center` 或 `智能体对话中心`
- 设置为 **Public**（公开仓库）
- **不要**勾选 "Add a README file"
- **不要**勾选 "Add .gitignore"
- **不要**勾选 "Choose a license"

### 2. 连接远程仓库
创建仓库后，复制仓库URL，然后在终端运行：

```bash
# 添加远程仓库（替换YOUR_USERNAME和YOUR_REPO_NAME）
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# 推送代码到GitHub
git branch -M main
git push -u origin main
```

### 3. 执行GitHub Pages部署
```bash
npm run deploy
```

### 4. 启用GitHub Pages
1. 进入GitHub仓库页面
2. 点击 "Settings" 选项卡
3. 滚动到 "Pages" 部分
4. 在 "Source" 下选择 "Deploy from a branch"
5. 选择 "gh-pages" 分支
6. 点击 "Save"

## 🌐 访问网站
部署完成后，您的网站将在以下地址可用：
```
https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/
```

## 🔄 更新网站
当您修改代码后，只需运行：
```bash
git add .
git commit -m "Update website"
git push
npm run deploy
```

## ⚠️ 注意事项
- 首次部署可能需要几分钟才能生效
- 确保仓库是公开的（Public）
- 如果遇到问题，检查GitHub Pages设置中的错误信息