rem wkhtmltopdf프로그램 설치를 먼저 하셔야 스크립트 구동이 가능합니다.
rem 아래의 wjdgo는 제 컴퓨터의 사용자 이름입니다. 제거랑 똑같이 폴더를 만드시거나, 아니면 ctrl+h 하셔서 구동하시는분의 사용자 폴더로 변경합니다.
rem C:\Users\wjdgo\SDA0\html폴더 안에1.html 2.html 이런식으로html파일을 넣어놓습니다. 경로상의 폴더가 없으면 만듭니다.
rem C:\Users\wjdgo\SDA0\htmlout 폴더를 먼저 만들어 놓습니다. pdf로 변환이 끝나서 더이상 필요없는 html파일이 htmlout 폴더로 들어갑니다.(혹시 모르니 삭제보다는 압축해서 보관을 추천드립니다)
rem C:\Users\wjdgo\SDA0\pdf폴더도 먼저 만들어 놓습니다. PDF파일이  PDF폴더로 들어갑니다.

rem -----아래의 a=(숫자) 부분에 변환시작 게시글 숫자를 넣어둡니다.-----
set /a a=1
rem -----위의 a=(숫자) 부분에 변환시작 게시글 숫자를 넣어둡니다.-----
echo off
:_loop
set /a a+=1

rem -----아래의 if %a%==(숫자) 부분에 변환 끝 게시글 숫자를 넣어둡니다.-----
if %a%==401870 goto _break
rem -----위의 if %a%==(숫자) 부분에 변환 끝 게시글 숫자를 넣어둡니다.-----

if exist C:\Users\wjdgo\SDA0\html\%a%.html (


rem ----------아래부터 파일 존재시 스크립트--------------------

start /d "C:\Program Files\wkhtmltopdf\bin\" /b wkhtmltopdf.exe --encoding UTF-8 C:\Users\wjdgo\SDA0\html\%a%.html C:\Users\wjdgo\SDA0\pdf\%a%.pdf
timeout /t 1
move "C:\Users\wjdgo\SDA0\html\%a%.html" "C:\Users\wjdgo\SDA0\htmlout\%a%.html"
goto _loop

rem ----------여기까지 파일 존재시 스크립트--------------------



) else (




rem ----------아래부터 파일 미존재시 스크립트-----------------

echo %a% 파일 존재안함
goto _loop

rem ----------여기까지 파일 미존재시 스크립트-----------------

)



:_break
echo 끝
pause

