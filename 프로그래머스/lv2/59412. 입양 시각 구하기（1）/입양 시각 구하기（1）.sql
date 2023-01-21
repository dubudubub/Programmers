-- 코드를 입력하세요
select to_char(datetime,'hh24')as hour, count(to_char(datetime,'hh'))as count from animal_outs
where to_char(datetime,'hh24') > 08
and to_char(datetime,'hh24') < 20
group by to_char(datetime,'hh24')
order by hour
