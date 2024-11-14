# grep : 파일 내에서 문자열 찾기
# -r: 지정된 모든 디렉토리 내에서 검사하는 옵션 /
#  n: 라인수까지 출력하는 옵션
#  i: 대소문자 구분하지 말고!! 대문자 쳐도 소문자 나오는 거 ㅇㅇ 다합쳐서 -rni
grep -r "hello" .


# find : 이름으로 파일 또는 디렉토리 찾기
# 너무 많으니까 파일명으로 제한시키고 grep ㄱㄱ

find . -name "*.txt"

# 같이 쓰면(xargs = 인풋값으로 쓰겠다. | <- 이건 왼쪽을 오른쪽으로 넘기겠다)
find . -name "*.txt" | xargs grep -rni "hello"
#  .txt로 끝나는 파일들 가운데에 hello 가 들어가는 것들을 찾아라
find . -name "*.txt" -exec grep -rni "hello" {} \;
# 왼쪽을 대상으로 execute하겠다. 뭘?  중괄호 안에 find에서 찾은 대상이 들어가고 역슬래쉬 세미콜론은 구문의 끝을 의미한다.

# type을 지정하고 싶을 때, f는 파일, d는 디렉토리 
find . -name "my*" -type f -exec grep -rni "hello" {} \;