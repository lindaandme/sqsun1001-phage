library(rworldmap)
library(RColorBrewer)
library(classInt)
data <- read.csv("country.csv",header=T)
par(mai=c(0,0,0.2,0),xaxs="i",yaxs="i")
sPDF <- joinCountryData2Map(data, joinCode = "NAME",
                              nameJoinColumn = "Country",
                            mapResolution='coarse')
classInt <- classInt::classIntervals( sPDF[["Distribution"]], n=6,style='kmeans')
catMethod = classInt[["brks"]]                           
colourPalette <- RColorBrewer::brewer.pal(10,'RdBu')[3:8]
head(colourPalette)

mapParams <- mapCountryData(sPDF, nameColumnToPlot="Distribution"
               , addLegend=FALSE
               ,missingCountryCol='white'
               , oceanCol='aliceblue'
               , catMethod = catMethod
               ,colourPalette =colourPalette)
do.call( addMapLegend
         , c( mapParams
         , legendWidth=0.7
         #,horizontal=FALSE 竖放图例
        , legendLabels="none"))   




