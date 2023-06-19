
mkdir prokka_data

for file in  * 
do  name=${file%A}
prokka ./%file/final.contigs.fa    --proteins  ./integrase_database/integrase_databse.fa    --outdir  ./prokka_data/%s   --locustag %file --prefix  %file  --mincontiglen 100   --cpus 0 --metagenome
done

