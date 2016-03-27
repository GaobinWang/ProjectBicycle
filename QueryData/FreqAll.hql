--查询数据

--数据可视化
--提取各个站点的交易频繁程度
insert overwrite local directory "/home/wanggaobin/code/ProjectBicycle/EDA/tran_freq.txt"
row format delimited fields terminated by '\t'
select rent_netid,count(*) as weight
from bicycle.tran
group by rent_netid
order by weight;

--提取各个站点的工作量密集程度
insert overwrite local directory "/home/wanggaobin/code/ProjectBicycle/EDA/sxj_freq.txt"
row format delimited fields terminated by '\t'
select net_id,count(*) as weight
from bicycle.sxj
group by net_id
order by weight;



