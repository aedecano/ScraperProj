$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
##Correct PE reads using BayesHammer from Spades package:
    system("unicycler  --mode bold --no_correct  --spades_path /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/SPAdes-3.12.0-Linux/bin/spades.py --pilon_path /media/newdrive/arun/MinIONdata_Sanger/1stRunMinION/ConcatFQtrim_porechop/pilon-1.22.jar -1 ${x}_1_corrected.fastq.gz -2 ${x}_2_corrected.fastq.gz -o ${x}_Unicycler_out");
#    system("mv ${x}_Unicycler_out/assembly.fasta Contigs_unicycler/${x}_contigs.fasta");
#    system("mv ${x}_Unicycler_out/assembly.gfa Gfa_unicycler/${x}_contigs.gfa");
#    system("mv ${x}_Unicycler_out/unicycler.log LOGs_unicycler/${x}_unicycler.log");
}


close(IN);
exit;

