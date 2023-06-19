## Terperate-phages
Temperate phages are important mobile genetic elements. Both integrases and their attachment sites in the respective phage and bacterial genomes are necessary components for temperate phage integration. We extracted 8,777 S. enterica temperate phages with 8,777 integrases encoded in their genomes. We further explored the genome characteristics, integration specificity, and genetic diversity of the temperate phages and their integrases.<br/>

## Software requirements <br/>
CD-HIT 4.81 <br/>
MAFFT 7.505 <br/>
TreeBest <br/>
Prodigal 1.13 <br/>
R: ggplot2 3.3.1, cowplot, ggpmisc, GGally, reshape, rworldmap, RColorBrewer, classInt.<br/>

## Installation 
Firstly, ensure that you have the necessary softwares installed on your lcomputer and that you can access it globally. <br/>
Secondly, you can clone it to your local computer using Git.<br/>
```git clone  https://github.com/lindaandme/sqsun1001-phage/ ```

## Usage

``` 
#Extraction of the host information
python ./main_code/extract_from_biosample.py biosample.all >column.biosample.txt
#Gene prediction
sh prodigal.sh
#Gene annotation
sh prokka.sh
#Phylogenetic analysis
sh Phylogenetic_analysis.sh
#Taxonomic classification of S. enterica temperate phages
sh vcontact2.sh
#Create a cartographic representation of the world.
Rscript worldmap.R
#Generate a scatter plot depicting correlations
Rscript correlation.R
#Generate a histogram of frequency distribution
Rscript Length-GC.R


