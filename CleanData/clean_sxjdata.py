#!/usr/bin/env python3
#ps:务必谨记，Python中是可以直接对字符进行操作的；而列表也是可以直接通过+号的方式来进行扩张
for line in open("/home/wanggaobin/project_bicycle/sxjdata.csv"):
   line=line.strip().split(",")
   data=line[4]
   newline=line[0:4]+[data[:8]]+[data[8:]]+[line[5]]
   print(','.join(newline))
