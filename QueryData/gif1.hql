--选取出各个时间点的用车情况

--选出一周的时间
use bicycle;
create table  tran_week
as select  *
from  tran   where tran_date>=20131021 and tran_date<=20131027;


select *
   case
      when tran_time>000000 and tran_time<003000 then "1"
      when tran_time>000000 and tran_time<003000 then "1"
      when tran_time>000000 and tran_time<003000 then "1"
      when tran_time>000000 and tran_time<003000 then "1"
      when tran_time>000000 and tran_time<003000 then "1"
      
   end as index from tran_week;

