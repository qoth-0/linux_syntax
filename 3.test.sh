
mkdir mydir 
cd mydir
touch first.txt second.txt # 파일 생성

if [ -f "first.txt" ]; then
    echo "file.txt exists"
else
    echo "file.txt does not exist."
fi

# file명이 중복되므로 변수처리

file_name="first.txt"
if [ -f "$file_name" ]; then  # $롤 변수 사용
    echo "$file_name exists"
else
    echo "$file_name does not exist."
fi

