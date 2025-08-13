#!/bin/bash

# Auto-deployment script for GitHub Pages
# Run this script to commit and push changes automatically

echo "🚀 Starting auto-deployment process..."

# Check if there are any changes
if [ -z "$(git status --porcelain)" ]; then
    echo "❌ No changes to commit. Repository is clean."
    exit 0
fi

# Add all changes
echo "📁 Adding all changes..."
git add .

# Get current date and time for commit message
current_date=$(date '+%Y-%m-%d %H:%M:%S')

# Create commit message
commit_message="✨ Auto-update portfolio - $current_date"

# Check if custom commit message is provided
if [ "$1" != "" ]; then
    commit_message="$1"
fi

# Commit changes
echo "💾 Committing changes with message: $commit_message"
git commit -m "$commit_message"

# Push to main branch
echo "🌍 Pushing to main branch..."
git push origin main

echo "✅ Deployment completed! Your website will be updated in a few minutes."
echo "🔗 Check your GitHub Actions tab for deployment status."
echo "🌐 Your website will be available at: https://github-nqvnlc.github.io/github-nqvnlc/"
