library(ggpubr)
library(ggpmisc)#添加方程和系数
library(ggplot2)
library(GGally)
library(reshape)
library(broom.helpers)

#读取数据
dat1 <- read.delim('integrase.phage.length.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p1 <- ggplot(dat1, aes(x=length2, y=length1)) +
  scale_x_continuous(expand = c(0,0),limits = c(0,100000)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,1500)) +
  labs(x = "length1", y = "length2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color='#82B0D2',fill='#82B0D2') +
  #geom_smooth(method = "lm",formula=y~x,color="#FA7F6F",fill="#FA7F6F",alpha=0.3,level=0.95)+
theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,parse=T,size=3,color="#FA7F6F")
p1


dat2 <- read.delim('coreregion.integrase.length.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p2 <- ggplot(dat2,  aes(x=length1, y=length2)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,2000)) +
  labs(x = "length1", y = "length2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color='#82B0D2',fill='#82B0D2') +
  #geom_smooth(method = "lm",formula=y~x,color="#FA7F6F",fill="#FA7F6F",alpha=0.3,level=0.95)+
  theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,parse=T,size=3,color="#FA7F6F")
p2


dat3 <- read.delim('coreregion.phage.length.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p3 <- ggplot(dat3, aes(x=length1,y=length2)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,100000)) +
  labs(x = "length1", y = "length2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color='#82B0D2',fill='#82B0D2') +
  #geom_smooth(method = "lm",formula=y~x,color="#FA7F6F",fill="#FA7F6F",alpha=0.3,level=0.95)+
  theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,parse=T,size=3,color="#FA7F6F")
p3


dat4 <- read.delim('integrase.phage.gc.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p4 <- ggplot(dat4, aes(x=GC2,y=GC1)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,80)) +
  labs(x = "GC1", y = "GC2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color="#C497B2",fill="#5F97D2") +
  #geom_smooth(method = "lm",color="#5F97D2",fill='#F7E1ED',alpha=0.3)+
  theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,size=3,color="#5F97D2")
p4


dat5 <- read.delim('coreregion.integrase.gc.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p5 <- ggplot(dat5, aes(x=GC1,y=GC2)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,80)) +
  labs(x = "GC1", y = "GC2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color="#C497B2") +
  #geom_smooth(method = "lm",color="#5F97D2",fill='#F7E1ED',alpha=0.3,level=0.95)+
  theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,parse=T,size=3,color="#5F97D2")
p5

dat6 <- read.delim('coreregion.phage.csv', sep = ',')
#绘制散点图各变量与因变量的关系
p6 <- ggplot(dat6, aes(x=GC1,y=GC2)) +
  scale_y_continuous(expand = c(0,0),limits = c(0,80)) +
  labs(x = "GC1", y = "GC2")+
  theme_test()+
  theme()+
  geom_point(size=1,alpha=0.4,color="#C497B2",fill="#5F97D2") +
  #geom_smooth(method = "lm",formula=y~x,color="#5F97D2",fill='#F7E1ED',alpha=0.3,level=0.95)+
  theme_bw()+
  theme(
    panel.grid.major = element_blank(),panel.grid.minor = element_blank()
  )+
stat_poly_eq(aes(label=paste(..eq.label..,..adj.rr.label..,..p.value.label..,sep = "~~~~")),formula = y~x,parse=T,size=3,color="#5F97D2")
p6
#图形排列
library(cowplot)
plot_grid(p1,p2,p3,p4,p5,p6,ncol=3)


#spearman相关验证
library(ggpubr)
ggscatter(dat4,
          x = "GC2", 
          y = "GC1",#y变量
          size = 1,
          alpha=0.2,
          #add = "reg.line",##拟合曲线
          #conf.int = TRUE,##置信区间阴影带
          cor.coef = TRUE, ##系数
          cor.method = "spearman"
          )






