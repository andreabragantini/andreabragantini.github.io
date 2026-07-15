@echo off
REM ---------------------------------------------------------------------------
REM Run this website locally with Docker (no Ruby install needed).
REM Double-click this file (or run it from the repo root). It starts a Jekyll
REM server at http://localhost:4000 and watches for file changes.
REM
REM Requires: Docker Desktop running.
REM Stop the site later with:  docker rm -f jekyll-local
REM ---------------------------------------------------------------------------
cd /d "%~dp0"

REM Make sure any previous instance is removed
docker rm -f jekyll-local >nul 2>&1

REM Convert Windows backslash path to forward slashes for Docker
set "REPO=%cd:\=/%"

docker run -d --name jekyll-local -p 4000:4000 -v "%REPO%:/srv/jekyll" -w /srv/jekyll --entrypoint sh jekyll/jekyll:latest /srv/jekyll/start.sh

echo.
echo Site is starting... open http://localhost:4000
echo (first build takes ~30s; stop with: docker rm -f jekyll-local)
