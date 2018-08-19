# SDAbackupproject

네이버 카페 SDA 크롤링/백업 프로젝트
https://namu.wiki/w/SDA
최근 네이버카페 SDA에서 더 이상 정상적인 활동/데이터 저장이 불가능해 졌고, 새 매니저의 무차별적인 글 삭제로 인해 이제 그 어디에서도 찾아볼수 없을 자료와 데이타들이 손실되고 있습니다.
매니저가 넘어간 다음날부터 5월 22일까지, 저는 아래의 프로그램(코드)을 만들어서 네이버카페 SDA에 남아있는 대부분의 게시글들을 제 하드 디스크로 긁어오는데에 성공하였으나 저작권 등 법적인 사유로 인해 배포는 불가능한 상황입니다.(언잰가 배포가 가능한 날이 오길 바랍니다...)
이에 따라 저는 다른 분들도 같은 방법을 사용하여 데이터를 긁어올 것을 추천드리며, 제가 만든 코드를 공유하기 위해 이 페이지를 만듭니다.

추가: http://cafe.naver.com/skyplanet/377
이곳에서 제가 수집한 파일을 포함한 SDA의 게시글들을 배포하기 위해 동의처리중입니다.
게시글들을 개인소장(?) 하고 싶으신 분들만 제 스크립트를 사용하셔서 크롤링 하셔서 저장해 두세요.



업로드한 파일.

1. https://github.com/wjdgowns77/SDAbackupproject/blob/master/SDAbackup1.ipynb
->크롤링 하는 스크립트+크롤링한 html파일에서 열자마자 로그인페이지로 리다이렉트 시키는 지뢰 제거하는 스크립트

2.https://github.com/wjdgowns77/SDAbackupproject/blob/master/abc.bat 
->html파일을 PDF로 변환시켜서 이미지 파일들을 함께 받아놓은 스크립트.(파이썬이 아닌 배치 파일입니다)
wkhtmltopdf프로그램 설치가 필요합니다.



제작자 이메일
admin@nonaver.com
wjdgowns77@naver.com



중요 읽어보셔야 하는것.

0. 제가 파이썬을 배운 것이라고는 반년 전에 꿈의대학 프로그램을 통해 많아봐야 수십 시간 배워 본게 다입니다.
없는 실력 짜내가며 한줄을 쓸때마다 구글과 스택오버플로를 전전하며 일단 대충 굴러가게만 만들었습니다.
해당 코드가 정상 작동할거라고 보증하지 않습니다. 제대로 만든것 같다고 느껴지지도 않습니다.
확실한건 <제가 작동시킬때에는 잘 돌아가는것 처럼 보였다는 것>입니다.
수정요청 감사히 받겠습니다만, 제가 수정할수 없을수도 있습니다.
프로그램을 살펴보시기 전에, 해당 부분 꼭 알아주시기 바랍니다....ㅠㅠ


1. 크롤링을 할 때에는 많은 시간과 노력이 필요합니다.
제가 사용하는 다목적 1155기반 서버로 이 크롤링 하는데에 약 2주가 걸렸습니다.
물론 24시간 작동 조건입니다.
두개를 돌리면 되지 않냐! 하실 수도 있는데, 네이버의 크롤링 차단을 막기 위해 크롬을 직접 뜨위서 동작하게 했더니 CPU점유율이 어마어마해서(약50-60%선) 두개는 돌리기가 힘들었습니다.(가난한 학생이라 집에 서버가 한대밖에 없습니다.)
다들 개인 사용 가능한 서버 두대씩은 있으시죠?^^;;
없으시다면 PC로 돌리셔도 되지만, 2주동안은 컴퓨터를 끌수도 없고 창이 완전히 내려가지도 않아 해당 PC로 다른 작업을 할 수도 없습니다.
SSD미탑재 PC 또는 듀얼 코어 이하 PC의 경우 웹서핑 속도가 느려 더 오래걸릴 가능성도 있습니다.
SSD탑재된, 인터넷 빠른, 쿼드코어(데스크톱 i5이상) 이상의 PC를 추천합니다.
"서버면 더 좋구요....."

2. http://cafe.naver.com/skyplanet/77
초기 세팅은 위의 링크의 게시글을 참고합니다.
위의 링크에 나와있는 게시글에 있는 스크립트랑 제가 여기에 올리는 크롤러 스크립트는 동일한 스크립트 입니다.

3. 일단 1차적으로 긁어온 html파일의 경우 iframe내부에 삽입되는 부분으로서 해당 부분은 encoding이 지정되지 않아(encoding 지정하는 부분이 없습니다) 그냥 브라우저로 잘 안열릴수 있습니다.
텍스트 에디터로 강제 인코딩 지정(UTF-8)하셔서 여시면 되고, pdf로 후처리 할때 인코딩을 지정해서 하면 자동으로 인코딩은 수정됩니다.
아니면 스크립트 만드셔서 텍스트로 인코딩 지정해서 여시고 두번째줄에 \<meta charset="UTF-8"> 붙혀주셔도 됩니다.... 


4. 아무런 생각없이 크롤링을 했더니 지뢰가 설치되어 있네요.
일부 파일은 열자마자 네이버 로그인 페이지로 리다이렉트가 되어 버립니다.
html파일 여셔서 <iframe title="답변쓰기에디터" (블라블라...)   이걸로 시작하는 줄을 다 지워 버리세요.
직접 안하셔도 됩니다. 자동화 스크립트 공개합니다.(실력이 없는 관계로 아예 저 부분을 무의미하게 손상시켜 버리는 스크립트입니다.)
수집하자마자 없애버려도 되는데, 그냥 따로 분리하는게 나을것 같아서 분리했습니다.(사실 반쯤 수집하고 나서야 발견해서 방법이 없었다는...ㅠㅠ)

5. 후처리 안하시면 나중에 글삭제시 사진이 깨집니다.
pdf후처리 방법도 공개합니다. https://github.com/wjdgowns77/SDAbackupproject/blob/master/abc.bat

6. 마소 윈도우에서 돌아가는 스크립트 입니다.
과일 이름으로 된 OS, 리눅스, 맥 이런곳에서 돌아갈거라 생각하지 않습니다.
이런 OS를 쓰실 정도면 그정도의 실력이 있으니 쓰시는 거겠죠...직접 개발하셔서 공개 부탁드립니다...

7. 추가: http://cafe.naver.com/skyplanet/377 
혹시 이미 작성하신 게시글이 있는 경우, 이쪽에서 동의처리 부탁드립니다.


이상입니다... 언젠가 더 추가할 날이 오겠죠....







