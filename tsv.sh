##从ENA下载tsvtxt批量下载数据
##Constant1 = wget Contant2 = 
##Usage sh tsv.sh
cat example.tsv.txt   | awk '{print $8}' | tr -s ';' '\n'  | sed -e '1d' > batch_file
echo "Please write the constant1 and constant2"
python3 batch_noneout.py > download.sh
##t=`cat download.sh | wc -l`
##ParaFly -c download.sh  -CPU 
