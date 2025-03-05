#!/usr/bin/env sh

# Dừng script nếu có lỗi
set -e

# Build project
npm run build

# Chuyển vào thư mục build
cd dist

# Khởi tạo git và push lên branch gh-pages
git init
git add -A
git commit -m 'deploy'
git branch -M gh-pages
git remote add origin https://github.com/hungdqpc06637/profile.git
git push -f origin gh-pages

cd -
