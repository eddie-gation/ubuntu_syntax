# 사용자 추가(root계정으로 바꾸던지, root권한을 빌려야 함) => sudo
useradd seonghyuek2
# 비밀번호 지정
passwd seonghyuek2

# 사용자변경명령어 : 변경하고자 하는 비밀번호.(sudo는 현재 사용자의 비밀번호)
su - seonghyuek2 

su - root

# chmod 는 권한 부여 명령어 : rwx/ r=4 w=2 x=1 
chmod 644 파일명
chmod g+x 파일명
chmod o+r 파일명
chmod u-w 파일명
chmod g=r 파일명


#  chown 은 소유자, 그룹 변경
chown seonghyuek2:seonghyuek2 파일명

