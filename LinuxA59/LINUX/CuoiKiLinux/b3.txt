1. sed '/^$/d' bai3.txt >out1.txt
2.sed 's/*/=/g' bai3.txt >out2.txt
3. sed '/\/01\//!d' bai3.txt >out3.txt
4.sed '/ThaiBinh/!d' bai3.txt >out4.txt
5.sed 's/^Nguyen[^Huong]*Huong/NguyenLan/' bai3.txt >out5.txt
6.sed '4i\
NguyenVietTuan 14000884 BacNinh  15/08/1996     9       9       9
' bai3.txt > out6.txt

