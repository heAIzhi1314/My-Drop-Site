@echo off
chcp 65001 >nul
echo ========================================
echo           一键部署网站脚本
echo ========================================
echo.
echo 请选择部署方式：
echo 1. GitHub Pages 部署
echo 2. Vercel 部署
echo 3. Netlify 拖拽部署（打开网站）
echo 4. 本地预览
echo 5. 退出
echo.
set /p choice=请输入选项 (1-5): 

if "%choice%"=="1" goto github_pages
if "%choice%"=="2" goto vercel_deploy
if "%choice%"=="3" goto netlify_deploy
if "%choice%"=="4" goto local_preview
if "%choice%"=="5" goto exit

echo 无效选项，请重新运行脚本
pause
goto exit

:github_pages
echo.
echo 正在准备 GitHub Pages 部署...
echo 1. 请确保已将项目推送到 GitHub 仓库
echo 2. 安装依赖包...
npm install
echo 3. 执行部署...
npm run deploy
echo GitHub Pages 部署完成！
pause
goto exit

:vercel_deploy
echo.
echo 正在使用 Vercel 部署...
echo 注意：首次使用需要登录 Vercel 账户
vercel --prod
echo Vercel 部署完成！
pause
goto exit

:netlify_deploy
echo.
echo 正在打开 Netlify 部署页面...
echo 请将整个项目文件夹拖拽到网页中的部署区域
start https://app.netlify.com/drop
pause
goto exit

:local_preview
echo.
echo 正在启动本地预览服务器...
echo 服务器地址: http://localhost:8000/ffffgghcse.html
echo 按 Ctrl+C 停止服务器
start http://localhost:8000/ffffgghcse.html
python -m http.server 8000
goto exit

:exit
echo 脚本执行完成！