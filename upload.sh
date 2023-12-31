#!/bin/bash
bundle exec jekyll build  --config _config_local.yml
git add .
git commit -m "$1"
git push origin gh-pages
