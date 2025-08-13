# 🚀 Auto-Deployment Setup Guide

Hướng dẫn setup auto-deployment cho portfolio website của bạn trên GitHub Pages.

## 📋 **Prerequisites**

- Repository GitHub đã được tạo
- Git đã được cài đặt trên máy
- Access token GitHub (nếu cần)

## ⚙️ **Setup Steps**

### 1. 🔧 **Enable GitHub Pages**

1. Vào repository trên GitHub
2. Click **Settings** tab
3. Scroll xuống **Pages** section (bên trái sidebar)
4. Trong **Source**, chọn **GitHub Actions**
5. Save settings

### 2. 📁 **Repository Structure**

Đảm bảo repository có structure như sau:
```
github-nqvnlc/
├── .github/
│   └── workflows/
│       └── deploy.yml          # Auto-deployment workflow
├── index.html                  # Main website file
├── README.md                   # Portfolio README
├── deploy.sh                   # Quick deployment script
└── README-DEPLOYMENT.md        # This guide
```

### 3. 🚀 **Auto-Deployment Methods**

#### Method 1: Git Commands (Manual)
```bash
# Add changes
git add .

# Commit with message
git commit -m "✨ Update portfolio"

# Push to trigger deployment
git push origin main
```

#### Method 2: Quick Deploy Script
```bash
# Simple deployment
./deploy.sh

# Deployment with custom message
./deploy.sh "🎨 Updated design and added new projects"
```

#### Method 3: GitHub Web Interface
1. Upload files directly to GitHub
2. Commit changes via web interface
3. Auto-deployment sẽ tự động chạy

## 🔄 **How It Works**

### GitHub Actions Workflow
- **Trigger:** Mỗi khi push to `main` branch
- **Process:** Build và deploy automatically
- **Time:** Thường mất 2-5 phút
- **Status:** Check trong Actions tab

### Deployment Flow
```
Push to main → GitHub Actions → Build → Deploy → Live Website
```

## 🌐 **Website URLs**

Sau khi setup, website sẽ available tại:
- **GitHub Pages:** `https://github-nqvnlc.github.io/github-nqvnlc/`
- **Custom Domain:** (Optional setup)

## 📊 **Monitoring Deployment**

### Check Deployment Status
1. Vào repository GitHub
2. Click **Actions** tab
3. Xem latest workflow run
4. ✅ Green = Success, ❌ Red = Failed

### Common Issues & Solutions

#### ❌ **Deployment Failed**
- Check Actions logs for errors
- Ensure `index.html` exists in root
- Verify GitHub Pages is enabled

#### ⏳ **Website Not Updating**
- Wait 5-10 minutes for propagation
- Hard refresh browser (Ctrl+F5)
- Clear browser cache

#### 🔐 **Permission Issues**
- Check repository permissions
- Ensure Actions are enabled
- Verify Pages source is set to Actions

## 🎯 **Best Practices**

### Commit Messages
```bash
✨ Add new feature
🎨 Update design
🐛 Fix bug
📝 Update documentation
🚀 Deploy to production
```

### File Organization
- Keep `index.html` in root directory
- Organize assets in folders
- Use meaningful file names
- Include proper meta tags

### Testing Before Deploy
```bash
# Test locally first
open index.html

# Then deploy
./deploy.sh "✅ Tested and ready for production"
```

## 🔗 **Quick Commands**

```bash
# Check status
git status

# Quick add & commit
git add . && git commit -m "🚀 Quick update"

# Push to deploy
git push origin main

# One-liner deployment
git add . && git commit -m "✨ Auto-update $(date)" && git push origin main
```

## 🎉 **Success!**

Khi setup thành công:
- ✅ Mỗi commit sẽ auto-deploy
- ✅ Website luôn up-to-date
- ✅ Zero-downtime deployment
- ✅ Professional workflow

## 🆘 **Need Help?**

Nếu gặp vấn đề:
1. Check GitHub Actions logs
2. Verify repository settings
3. Ensure all files are committed
4. Contact support nếu cần

---

**🌟 Happy Coding & Automatic Deploying! 🌟**
