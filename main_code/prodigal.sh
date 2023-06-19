for file in  * 
do name=${file%}
prodigal  -i  $file/final.contigs.fa  -a  $file/${name}.protein.fa -d ./$file/${name}.fa -o ./$file/${name}.txt  -q
done