$file = $ARGV[0];

open(IN, $file);
while(<IN>){
    chomp;
    $x = $_;
    system("fastp -i /media/newdrive/arun/SCRAPER_ST131/Raw_FQs/Illumina/${x}\_1.fastq.gz -I /media/newdrive/arun/SCRAPER_ST131/Raw_FQs/Illumina/${x}\_2.fastq.gz -o $x\_1.trimmed.fastq.gz -O $x\_2.trimmed.fastq.gz");
}


close(IN);
exit;
