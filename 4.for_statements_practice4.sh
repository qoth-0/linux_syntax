file_count=0
directory_count=0
else_count=0
for a in *  # *은 전체를 의미 : 현재 위치의 모든 파일
do
    if [ -f "$a" ]; then # if문 파일 조건 옵션 : a가 파일인지 확인
        ((file_count++))  # 쉘프로그램에서는 산술연산을 위해 소괄호 두개로 감싸야 함

    elif [ -d "$a" ]; then # a가 디렉토린지 확인
        ((directory_count++))
    else
        ((else_count++))
    fi
done

echo "file's count: $file_count"
echo "directory's count: $directory_count"
echo "other's count: $else_count"