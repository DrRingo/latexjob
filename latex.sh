#!/bin/bash
# Danh sách các phần mở rộng cần xóa
extensions_list=(aux bbl bcf blg fdb_latexmk log fls idx ilg ind nav snm out run.xml synctex.gz toc)

function help {
echo "Task companion for latex file"
echo "-----------------------------"
echo "clean    - clean all auxilary file from latex building"
echo "cleanall - clean + delete pdf file"
echo "diff     - compare oldTexFile and newTextFile"
}

function h {
    help
}

# hàm clean: xóa tất cả các file sinh ra do quá trình build của latex
function clean {
# Kiểm tra xem có tham số được truyền vào hay không
if [ $# -eq 0 ]; then
    # Nếu không có tham số, xóa tất cả các file có ext như trong extensions_list
    # echo "Usage: $0 <filename>"
    for ext in "${extensions_list[@]}"; do
       rm -f -- *."$ext"
    done
fi

# Lấy phần mở rộng từ tên tệp truyền vào
filename="$1"

# Xóa tất cả các tệp có phần mở rộng trong danh sách
for ext in "${extensions_list[@]}"; do
    rm -f -- "$filename"."$ext"
done
}

# hàm cleanall: xóa như clean và bao gồm cả file pdf
function cleanall {
    echo "cleanall"
    clean
}

# hàm diff: so sánh 2 file tex với nhau để tìm ra điểm khác biệt
function diff {
if [ $# -eq 0 ]; then
    # Ghi ra hướng dẫn của hàm
    echo "Hàm diff latex cần 2 tham số: oldTexFile newTextFile"
    exit 1
fi

difft -- $1 $2
}


"$@"


