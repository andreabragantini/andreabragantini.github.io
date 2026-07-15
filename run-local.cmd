@echo off
REM ---------------------------------------------------------------------------
REM Run this website locally with Docker (no Ruby install needed).
REM Double-click this file (or run it from the repo root). It starts a Jekyll
REM server at http://localhost:4000 and watches for file changes.
REM
REM Requires: Docker Desktop running.
REM
REM You can also Stop/Pause the container from the Docker Desktop UI and
REM restart it later with the Start/Resume button - it stays in the list.
REM This script reuses the existing container when one already exists.
REM ---------------------------------------------------------------------------
cd /d "%~dp0"
set "REPO=%cd:\=/%"

docker inspect -f "{{.State.Status}}" jekyll-local >nul 2>&1
if %errorlevel%==0 goto STARTEXISTING

echo No container found - creating a new one...
docker run -d --name jekyll-local -p 4000:4000 -v "%REPO%:/srv/jekyll" -w /srv/jekyll --entrypoint sh jekyll/jekyll:latest /srv/jekyll/start.sh
echo Started. Open http://localhost:4000 (first build ~30-60s)
goto :eof

:STARTEXISTING
echo Container already exists - starting it (or leaving it running)...
docker start jekyll-local >nul 2>&1
echo Ready. Open http://localhost:4000
