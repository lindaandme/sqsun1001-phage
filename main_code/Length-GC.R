library(ggplot2)
library(cowplot)
#读取数据
Plength <- read.delim('Phage.length.csv', sep = ',')
#1.直方图
g1=ggplot(Plength,aes(x =length))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 fill='#9AC9DB',  color='#82B0D2' ,#fill='#9AC9DB'
                  # 透明度，可以不设置
                 binwidth = 500, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
#scale_x_reverse()
g1

#读取数据
Ilength <- read.delim('Integrase.length.csv', sep = ',')
#1.直方图
g2=ggplot(Ilength,aes(x =length))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 fill='#9AC9DB',  color='#82B0D2' ,
                 # 透明度，可以不设置
                 binwidth = 10, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
#scale_x_reverse()
g2



#读取数据
Rlength <- read.delim('CoreRegion.length.csv', sep = ',')
#1.直方图
g3=ggplot(Rlength,aes(x =length))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 color='#82B0D2',fill='#9AC9DB',  # 边框与填充色，可以不设置
                  # 透明度，可以不设置
                 binwidth = 5, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
  #scale_x_reverse()
g3

#读取数据
PGC <- read.delim('Phage.GC.csv', sep = ',')
#1.直方图
g4=ggplot(PGC,aes(x =GC,y=count))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 color='#C497B2',fill='#C497B2', #fill='#F7E1ED' 边框与填充色，可以不设置
                 # 透明度，可以不设置
                 binwidth = 1, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
#scale_x_reverse()
g4

#读取数据
IGC <- read.delim('Integrase.gc.csv', sep = ',')
#1.直方图
g5=ggplot(IGC,aes(x =GC))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 color='#C497B2' ,fill='#C497B2',  # 边框与填充色，可以不设置
                 # 透明度，可以不设置
                 binwidth = 1, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
#scale_x_reverse()
g5

#读取数据
RGC <- read.delim('CoreRegion.gc.csv', sep = ',')
#1.直方图
g6=ggplot(RGC,aes(x =GC))+
  geom_histogram(aes(y=..count..), # 纵坐标是密度。类似也可以将纵坐标设置为频数(count)
                 color='#C497B2' ,fill='#F6CAE5',alpha=0.65, # 边框与填充色，可以不设置
                  # 透明度，可以不设置
                 binwidth = 2, # 柱子的宽度。类似得也可以设置柱子的个数，如bins = 30
                 center = 0)+ # 柱子与对应横坐标的相对位置。0是指居中对齐。1是指对应数字在柱子的右侧边线。可以不设置
  theme_classic()
#scale_x_reverse()
g6
plot_grid(g1,g4,g2,g5,g3,g6,ncol=2)

