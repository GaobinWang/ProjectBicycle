#!/usr/bin/env python3
#此过程还存在一个问题，就是讲数字和逗号一起输出之后，所有的int型变量也随之转换为字符型变量？如何解决这一问题呢？

import time
import datetime

for line in open("/home/wanggaobin/project_bicycle/sxjdata.csv"):
   line=line.strip().split(",")
   data=line[4]
   tmp=time.strptime(data,"%Y%m%d%H%M%S")
   data1=time.strftime("%Y%m%d",tmp)
   data2=time.strftime("%H%M%S",tmp)
   print(line[0],",",line[1],",",line[2],",",line[3],",",data1,",",data2,",",line[5])
   print(int(line[0]),",",line[1],",",int(line[2]),",",int(line[3]),",",int(data1),",",int(data2),",",int(line[5]))


