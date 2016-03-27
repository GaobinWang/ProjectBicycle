--查询数据

--数据可视化
--提取从1053站点出发到达各个站点的交易次数
insert overwrite local directory "/home/wanggaobin/code/ProjectBicycle/EDA/from1053"
row format delimited fields terminated by '\t'
select rent_netid,return_netid,count(*) as weight 
from bicycle.tran  
where rent_netid=1053
group by return_netid,rent_netid 
order by weight;


--提取从各个站点出发到达1053站点的交易次数
insert overwrite local directory "/home/wanggaobin/code/ProjectBicycle/EDA/to1053"
row format delimited fields terminated by '\t'
select rent_netid,return_netid,count(*) as weight from bicycle.tran  
where return_netid=1053
group by return_netid,rent_netid 
order by weight;
