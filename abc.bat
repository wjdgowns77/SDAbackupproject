rem wkhtmltopdf���α׷� ��ġ�� ���� �ϼž� ��ũ��Ʈ ������ �����մϴ�.
rem �Ʒ��� wjdgo�� �� ��ǻ���� ����� �̸��Դϴ�. ���Ŷ� �Ȱ��� ������ ����ðų�, �ƴϸ� ctrl+h �ϼż� �����Ͻôº��� ����� ������ �����մϴ�.
rem C:\Users\wjdgo\SDA0\html���� �ȿ�1.html 2.html �̷�������html������ �־�����ϴ�. ��λ��� ������ ������ ����ϴ�.
rem C:\Users\wjdgo\SDA0\htmlout ������ ���� ����� �����ϴ�. pdf�� ��ȯ�� ������ ���̻� �ʿ���� html������ htmlout ������ ���ϴ�.(Ȥ�� �𸣴� �������ٴ� �����ؼ� ������ ��õ�帳�ϴ�)
rem C:\Users\wjdgo\SDA0\pdf������ ���� ����� �����ϴ�. PDF������  PDF������ ���ϴ�.

rem -----�Ʒ��� a=(����) �κп� ��ȯ���� �Խñ� ���ڸ� �־�Ӵϴ�.-----
set /a a=1
rem -----���� a=(����) �κп� ��ȯ���� �Խñ� ���ڸ� �־�Ӵϴ�.-----
echo off
:_loop
set /a a+=1

rem -----�Ʒ��� if %a%==(����) �κп� ��ȯ �� �Խñ� ���ڸ� �־�Ӵϴ�.-----
if %a%==401870 goto _break
rem -----���� if %a%==(����) �κп� ��ȯ �� �Խñ� ���ڸ� �־�Ӵϴ�.-----

if exist C:\Users\wjdgo\SDA0\html\%a%.html (


rem ----------�Ʒ����� ���� ����� ��ũ��Ʈ--------------------

start /d "C:\Program Files\wkhtmltopdf\bin\" /b wkhtmltopdf.exe --encoding UTF-8 C:\Users\wjdgo\SDA0\html\%a%.html C:\Users\wjdgo\SDA0\pdf\%a%.pdf
timeout /t 1
move "C:\Users\wjdgo\SDA0\html\%a%.html" "C:\Users\wjdgo\SDA0\htmlout\%a%.html"
goto _loop

rem ----------������� ���� ����� ��ũ��Ʈ--------------------



) else (




rem ----------�Ʒ����� ���� ������� ��ũ��Ʈ-----------------

echo %a% ���� �������
goto _loop

rem ----------������� ���� ������� ��ũ��Ʈ-----------------

)



:_break
echo ��
pause

