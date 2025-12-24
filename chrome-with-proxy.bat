@echo off
setlocal
set CHROME_PATH="C:\projetos\chrome-portable\GoogleChromePortable.exe"
REM set PROXY_CONFIG=--proxy-server="http://192.168.0.105:8888;https://192.168.0.105:8888;socks5://192.168.0.105:8888;ws://192.168.0.105:8888"
set PROXY_CONFIG=--proxy-server="http=127.0.0.1:8888;https=127.0.0.1:8888;socks4://127.0.0.1:8888;socks5://127.0.0.1:8888"
set BYPASS=--proxy-bypass-list="<local>"
start "" %CHROME_PATH% %PROXY_CONFIG% %BYPASS%
endlocal
