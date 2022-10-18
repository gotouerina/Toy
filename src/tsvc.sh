##从ENA下载tsv_txt批量下载数据
##Usage sh tsv.sh
cat example.tsv.txt   | awk '{print $8}' | tr -s ';' '\n'  | sed -e '1d' > batch_file
python3 batch_noneout.py > download.sh
##t=`cat download.sh | wc -l`
##ParaFly -c download.sh  -CPU 
