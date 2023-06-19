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
python ./main_code/extract_from_biosample.py biosample.all >column.biosample.txt <br/>
sh prodigal.sh
sh prokka.sh


