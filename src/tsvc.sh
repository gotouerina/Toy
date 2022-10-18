##从ENA下载tsv_txt批量下载数据
##Usage sh tsv.sh
cat example.tsv.txt   | awk '{print $8}' | tr -s ';' '\n'  | sed -e '1d' > batch_file
x=`pwd`
$x/batch  > batch_run.sh
sed -i '$d' batch_run.sh
##t=`cat download.sh | wc -l`
##ParaFly -c download.sh  -CPU && rm batch_run.sh && rm batch_file
