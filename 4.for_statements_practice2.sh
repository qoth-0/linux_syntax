
echo "start"
if [ -d "mydir2" ]; then 
    cd mydir2
else    
    mkdir mydir2
    cd mydir2
fi

if [ -f "test.txt" ]; then
    rm -rf test.txt  # r은 디렉토리 f는 force : 묻지말고 삭제(강제)
    touch test.txt   # 파일 생성
else   
    touch test.txt
fi

for a in {1..100}
    do 
        echo "hello world$a" >> test.txt  # txt파일에 추가
    done

