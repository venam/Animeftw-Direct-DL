@echo off
setlocal enabledelayedexpansion
set SEARCHTEXT=-
set REPLACETEXT=

if "%1" =="" goto :notdownload
if "%2" =="" goto :notdownload

SET string=%1
SET episode=%2

SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!
    curl --user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:17.0) Gecko/17.0 Firefox/17.0" --referer "http://www.animeftw.tv/anime/!string!/" "http://videos.animeftw.tv/!modified!/!modified!_!episode!_ns.mkv" -o !modified!_!episode!.mkv

    goto :eof
:notdownload
    echo usage: dl.bat nameofanim episodenumber
:eof
