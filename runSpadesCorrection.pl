$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
##Correct PE reads using BayesHammer from Spades package:
#    system("/usr/bin/SPAdes-3.11.1-Linux/bin/spades.py --only-error-correction -1 ${x}_1.trimmed.fastq.gz -2 ${x}_2.trimmed.fastq.gz -o Corrected_Reads/${x}");

##Rename and relocate corrected read libraries:
#    system("mv Corrected_Reads/${x}/corrected/${x}_1.trimmed.fastq.00.0_0.cor.fastq.gz ${x}_1_corrected.fastq.gz");
#    system("mv Corrected_Reads/${x}/corrected/${x}_2.trimmed.fastq.00.0_0.cor.fastq.gz  ${x}_2_corrected.fastq.gz");    
}


close(IN);
exit;
