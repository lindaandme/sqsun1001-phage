## Genetic characteristics and integration specificity of Salmonella enterica temperate phages
Temperate phages can engage in the horizontal transfer of functional genes to their bacterial hosts. Thus, their genetic material becomes an intimate part of bacterial genomes and plays essential roles in bacterial mutation and evolution. Specifically, temperate phages can naturally transmit genes by integrating their genomes into the bacterial host genomes via integrases. Our previous study showed that Salmonella enterica contains the largest number of temperate phages among all publicly available bacterial species. S. enterica is an important pathogen that can cause serious systemic infections and even fatalities. Here we identified 8,777 S. enterica temperate phages, all of which have integrases in their genomes. We found 491 non-redundant S. enterica temperate phage integrases (integrase entries). S. enterica temperate phage integrases were classified into three types: intA, intS, and phiRv2. Correlation analysis showed that the sequence lengths of S. enterica integrase and core regions of attB and attP were strongly correlated. Further phylogenetic analysis and taxonomic classification indicated that both the S. enterica temperate phage genomes and the integrase gene sequences were of high diversities. Our work provides insight into the essential integration specificity and genetic diversity of S. enterica temperate phages. This study paves the way for a better understanding of the interactions between phages and S. enterica. By analyzing a large number of S. enterica temperate phages and their integrases, we provide valuable insights into the genetic diversity and prevalence of these elements. This knowledge has important implications for developing targeted therapeutic interventions, such as phage therapy, to combat S. enterica infections. By harnessing the lytic capabilities of temperate phages, they can be engineered or utilized in phage cocktails to specifically target and eradicate S. enterica strains, offering an alternative or complementary approach to traditional antibiotic treatments. Our study has implications for public health and holds potential significance in combating clinical infections caused by S. enterica.<br/>

## Software requirements <br/>
CD-HIT 4.81 <br/>
MAFFT 7.505 <br/>
TreeBest <br/>
Prodigal 1.13 <br/>
R: ggplot2 3.3.1, cowplot, ggpmisc, GGally, reshape, rworldmap, RColorBrewer, classInt.<br/>

## Installation 
Firstly, ensure that you have the necessary softwares installed on your computer and that you can access it globally. <br/>
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


