#/data/00/user/user214/miniconda3/bin/perl
# download perl from ENA tsv
use warnings;
##打开文件
#Usage:perl download.pl  <tsv_file> ;
#$cmd1 = "cat $ARGV[0] | awk '{print $8}' | tr -s ';' 'n'  | sed -e '1d' > batch_file";
if ( $ARGV[0])
{
	system("cat $ARGV[0] | awk '{print \$8}' | tr -s ';' '\n'  | sed -e '1d' >batch_file");
}
else {
	die "No input_file!\n"."Usage :perl download.pl  <tsv_file> ;"
}
open ($out_fh, ">batch_run.sh") ;
open $log_fh, '>> batch.log';
open ($read_fh, "<batch_file") or die "No input_file!\n"."Usage :perl download.pl  <tsv_file> ;" ;
$cmd2 = "rm batch_file";
$cmd3 = "sh batch_run.sh && rm batch_run.sh";
&printline($read_fh);
close();
system("$cmd2");
system("$cmd3");
##读取文件
sub printline
{
	while(<$read_fh>)
	{
		if ( $ARGV[0])
		{
		chomp;
		print {$out_fh} "wget "."$_\n";
		}
		else 
		{
		system("$cmd2");
		}
	}
}

##关闭文件
sub close
{
	close $read_fh;
	close $out_fh;
	close $log_fh;
}
