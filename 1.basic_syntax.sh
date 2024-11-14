# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# 현재 위치에서 파일 및 폴더 목록 조회
ls

# 목록조회 자세히
ls -l
-> drwxr-xr-x = d는 디렉토리, rwx는 read,write,execute/ 
권한rwx(소유자가 접근할 수 있는 권한) / r-x(그룹에 속한 사용자들 접근권한)/ r-x(모든 사용자가 접근할 수 있는권한)

# 목록조회 자세히, 숨김 파일까지 ★
ls -al
# 목록조회 자세히, 숨김 파일,과거 순 ★★
ls -alrt(오래된순  // ls -alt(최신순

# 디렉토리 생성(폴더생성)
mkdir seong_dir

# 특정 디렉토리로 이동
cd seong_dir
# 상위 디렉토리로 이동 
cd .. 
# 또는 cd ../   최상위 디렉토리를 루트 디렉토리라고 함
# 홈 디렉토리는 맨 처음 나오는 디렉토리, 최상위는 아니다.
cd / # 이것이 최상위!

# 다시 기존의 폴더로 이동
cd home/Kimseonghyuek/seong_dir

#직전 폴더로 이동
cd - 

#홈경로(최초 로그인 했을 때의 위치)로 이동
cd
-> home/kimseonghyuek
# 상대경로 : cd ../../
# 절대경로 : cd /home
#  .은 현재 위치, ..은 상위 위치

# 비어있는 파일 만들기 
touch first_file.txt
# 파일내용 조회하기
cat first_file.txt
# 파일내용 페이지별로 조회
more first_file.txt

# 파일 내용 상위 10줄 조회
head first_file.txt

# 하위 10줄 조회 (진짜 많이 씀) (이런 애들을 로그 조회 할때 쓰는데, 최신 로그부터 조회하기 위해서 tail을 많이 씀)
tail first_file.txt
# 파일내용 하위 n개 조회
tail -5 first_file.txt
# 만약 실시간일 경우 -f 옵션 많이 상ㅛㅇ
tail -f first_file.txt


# 문서편집기 vi, nano가 있음 vi는 가벼운 편집기여서 메모리 최적화 용량 최적화가 이루어져 있음. 현업에서 많이 쓰임
nano first_file.txt
# nano 편집기로 들어가짐 글 쓰고 ctrl + 단축키로 편집 저장 등등 가능
#도스키 위, 아래를 통해 이전 명령어를 조회 할 수 있고, ctrl + c 를 통해서 입력 명령어 취소 가능

# 터미널창에 문자열을 출력(echo를 왜 쓰는가, 터미널창에 로그를 남기기 위해서, 셸 프로그래밍 사용)
echo "hello world"
# 파일에 echo를 통해 내용 입력(덮어쓰기, 추가하기)
# > 하나 쓰면 덮어쓰기, >> 두개 쓰면 추가하기
echo "oh my god" > first_file.txt
echo "oh my goodness" >> first_file.txt

# histroy 명령어를 통해 이전에 실행했던 모든 명령어 조회
histroy 

# 현재 내 터미널 창에 보이는 내역 정리
clear


# rm은 삭제 명령어
rm first_file.txt
# 만약에 삭제할건지 묻는지 여부에 상관없이 강제 삭제(묻지말고 삭제해라)
rm -f first_file.txt
# 폴더 쨰 삭제는 -r
rm -r 폴더명

# cp는 복사명령어
# cp 복사대상 복사될 파일명

cp test test2

# mv 는 이동명령어
# [mv 이동대상파일 이동될파일명]
mv first_file.txt ../first_file.txt
#같은 폴더내에서 파일명 바꿀 때에도 씀
mv first_file.txt third_file.txt

