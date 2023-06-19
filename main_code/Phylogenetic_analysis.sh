#Multiple sequence alignment
mafft --auto  teperate_phages.fa  >align.fasta
#Build a neighbour-joining (NJ) tree
treebest  nj  -b 1000 align.fasta >nj.tree.newic
