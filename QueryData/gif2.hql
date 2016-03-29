--
create table if not exists  bicycle.tran_week2(rent_netid int comment "the id of rental location",
tran_date int comment "the date of rent bike  in format YYYYMMDD",
tran_time int comment "the time of rent bike  in format HHMMSS",
index int comment "index")
comment  "this is the transaction table ,every row represent that one user rent and return a bike"
row format delimited fields terminated by ' ' 
stored as textfile
tblproperties ("creator"="wanggaobin","create-at"="2016-03-27");
--向表格中tran表格中导入数据
load data local inpath "/home/dmc/result.txt" into table bicycle.tran_week2;

