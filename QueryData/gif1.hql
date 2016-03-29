--选取出各个时间点的用车情况

--选出一周的时间
use bicycle;
create table  tran_week
as select  *
from  tran   where tran_date>=20131021 and tran_date<=20131027;


select *
   case
      when tran_time>000000 and tran_time<=003000 then "1"
      when tran_time>003000 and tran_time<=010000 then "2"
      when tran_time>010000 and tran_time<=013000 then "3"
      when tran_time>013000 and tran_time<=020000 then "4"
      when tran_time>020000 and tran_time<=023000 then "5"
      when tran_time>023000 and tran_time<=030000 then "6"
      when tran_time>030000 and tran_time<=033000 then "7"
      when tran_time>033000 and tran_time<=040000 then "8"
      when tran_time>040000 and tran_time<=043000 then "9"
      when tran_time>043000 and tran_time<=050000 then "10"
      when tran_time>050000 and tran_time<=053000 then "11"
      when tran_time>053000 and tran_time<=060000 then "12"
      when tran_time>060000 and tran_time<=063000 then "13"
      when tran_time>063000 and tran_time<=070000 then "14"
      when tran_time>070000 and tran_time<=073000 then "15"
      when tran_time>073000 and tran_time<=080000 then "16"
      when tran_time>080000 and tran_time<=083000 then "17"
      when tran_time>083000 and tran_time<=090000 then "18"
      when tran_time>090000 and tran_time<=093000 then "19"
      when tran_time>093000 and tran_time<=100000 then "20"
      when tran_time>100000 and tran_time<=103000 then "21"
      when tran_time>103000 and tran_time<=110000 then "22"
      when tran_time>110000 and tran_time<=113000 then "23"
      when tran_time>113000 and tran_time<=120000 then "24"
      when tran_time>120000 and tran_time<=123000 then "25"
      when tran_time>123000 and tran_time<=130000 then "26"
      when tran_time>130000 and tran_time<=133000 then "27"
      when tran_time>133000 and tran_time<=140000 then "28"
      when tran_time>140000 and tran_time<=143000 then "29"
      when tran_time>143000 and tran_time<=150000 then "30"
      when tran_time>150000 and tran_time<=153000 then "31"
      when tran_time>153000 and tran_time<=160000 then "32"
      when tran_time>160000 and tran_time<=163000 then "33"
      when tran_time>163000 and tran_time<=170000 then "34"
      when tran_time>170000 and tran_time<=173000 then "35"
      when tran_time>173000 and tran_time<=180000 then "36"
      when tran_time>180000 and tran_time<=183000 then "37"
      when tran_time>183000 and tran_time<=190000 then "38"
      when tran_time>190000 and tran_time<=193000 then "39"
      when tran_time>193000 and tran_time<=200000 then "40"
      when tran_time>200000 and tran_time<=203000 then "41"
      when tran_time>203000 and tran_time<=210000 then "42"
      when tran_time>210000 and tran_time<=213000 then "43"
      when tran_time>213000 and tran_time<=220000 then "44"
      when tran_time>220000 and tran_time<=223000 then "45"
      when tran_time>223000 and tran_time<=230000 then "46"
      when tran_time>230000 and tran_time<=233000 then "47"
      when tran_time>233000 and tran_time<=240000 then "48"
   end as index from tran_week;

