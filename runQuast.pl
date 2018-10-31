$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
    system("quast.py -G /media/newdrive/BACTERIA/NCTC13441/NCTC13441.gff -R /media/newdrive/BACTERIA/NCTC13441/NCTC13441.fa -o ${x}_Quast-AssemblyCheck ${x}_contigs.fasta");
}


close(IN);
exit;
