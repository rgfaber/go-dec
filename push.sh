#! /bin/bash
clear
echo '-----------------------------------'
echo pushing version "$1" to main branch
echo '-----------------------------------'
git add .
git commit -m "$1" -a
git tag "$2"
git push origin "$2"
GOPROXY=proxy.golang.org go list -m github.com/rgfaber/go-dec@"$2"