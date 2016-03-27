#!/usr/bin/Rscript
#设置默认工作路径
setwd("C:\\Users\\Administrator\\Desktop\\wgb\\3，师门讨论班材料\\杭州公共自行车项目\\第二次给的数据（20160311韩博文同学）")
#加载相应的包
library(lubridate)
library(ggplot2)
library(RgoogleMaps)
library(ggmap)
library(mapproj)
library(plyr)

#读取数据
#经纬度数据
#ps:共记录了2607个站点，其中168个站点的经纬度数据缺失
data=read.csv(file="经纬度.csv")
LonLat=data[,c("序号","站点编号","经度","纬度")]
colnames(LonLat)=c("序号","站点编号","纬度","经度")
LonLat=LonLat[complete.cases(LonLat),]
#交易数据
#PS:数据中有2881个站点
data1=read.table(file="tran_freq.txt",header = F)
colnames(data1)=c("站点编号","权重")
data1=data1[order(data1$权重,decreasing = T),]
data1$编号=1:nrow(data1)
#上下架数据
#ps:数据中有3131个站点
data2=read.table(file="sxj_freq.txt",header = F)
colnames(data2)=c("站点编号","权重")
data2=data2[order(data2$权重,decreasing = T),]
data2$编号=1:nrow(data2)


#画出各个站点的交易频繁程度
#交易表中的站点有经纬度的站点有2365个,简单的分析可知大的站点基本上都有经纬度数据
data1=merge(LonLat,data1,by="站点编号")
data1=data1[,c("站点编号","纬度","经度","权重")]
data1=data1[which(data1$纬度<90),]
lat=c(min(data1$纬度),max(data1$纬度))
lon=c(min(data1$经度),max(data1$经度))
center = c(lat = mean(lat), lon = mean(lon))
zoom <- min(MaxZoom(range(lat), range(lon)))

#zoom=11
map=get_map(location=c(lon=median(data1$经度),lat=median(data1$纬度)), zoom = 11, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data1,aes(x=经度,y=纬度,size=权重), alpha = 0.3))

#zoom=11,color="red"
map=get_map(location=c(lon=median(data1$经度),lat=median(data1$纬度)), zoom = 11, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data1,aes(x=经度,y=纬度,size=权重,color="red"), alpha = 0.3))

#zoom=12
map=get_map(location=c(lon=median(data1$经度),lat=median(data1$纬度)), zoom = 12, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data1,aes(x=经度,y=纬度,size=权重), alpha = 0.3))

#zoom=12,color="red"
map=get_map(location=c(lon=median(data1$经度),lat=median(data1$纬度)), zoom = 12, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data1,aes(x=经度,y=纬度,size=权重,color="red"), alpha = 0.3))


#画出各个站点的工作频繁程度
data2=merge(LonLat,data2,by="站点编号")
data2=data2[,c("站点编号","纬度","经度","权重")]
data1=data1[which(data1$纬度<90),]
lat=c(min(data1$纬度),max(data1$纬度))
lon=c(min(data1$经度),max(data1$经度))
center = c(lat = mean(lat), lon = mean(lon))
zoom <- min(MaxZoom(range(lat), range(lon)))

#zoom=12
map=get_map(location=c(lon=median(data2$经度),lat=median(data2$纬度)), zoom = 12, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data2,aes(x=经度,y=纬度,size=权重), alpha = 0.3))


#选择出1053站点来进行分析(龙翔桥站点)
#画出该站点
data=LonLat[which(LonLat$站点编号==1053),]
map=get_map(location=c(lon=median(data$经度),lat=median(data$纬度)), zoom = 13, maptype = "terrain", source = "google")
print(ggmap(map)+geom_point(data=data,aes(x=经度,y=纬度,color="red"), alpha = 0.3))

