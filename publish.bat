@echo off

REM set working directory
SET mypath=%~dp0
CD %mypath:~0,-1%

REM add file to publish
COPY QuanLyTiemVang.war "C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps"