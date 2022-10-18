##Usage : sh batch.sh
##Last batch file name = batch_run.sh
##You should install ParaFly by conda before run the batch_run.sh
read -p "Please write the inputfile suffix(example:fa):" prefix
for i in *.$prefix
do
	echo "$i" >> batch_file
done
echo "Please write the constant1 and constant2"
x=`pwd`
$x/batch  > batch_run.sh
sed -i '$d' batch_run.sh
sed -i '1d' batch_run.sh
sed -i '1d' batch_run.sh
##len=`cat batch_run.sh | wc -l`
##ParaFly -c batch_run.sh -CPU $len
