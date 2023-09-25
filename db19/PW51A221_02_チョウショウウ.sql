-- 1
select id,name from m_subject
order by id desc;

-- 2
select id,name,blood_type from m_student
where grade=3 and (blood_type='A' or blood_type='b')
order by id desc;

-- 3
select name,grade,address from m_student
where address like '%ai%'
order by address asc, grade desc;

-- 4
select subject_id ,avg(point) from t_point
where point>=60
group by subject_id;

-- 5
select max(height),min(weight) from employees
where blood_type like 'A';

-- 6
select grade,gender,count(*)from m_student
where blood_type not like 'AB' 
group by grade,gender
having count(*)>=10
order by gender asc, count(*) desc;

-- 7
select title,screen_time,production_year from movie
where production_year>=2010 and title not like '%o%'
order by production_year asc,screen_time desc;

-- 8
select ms.name,tp.point 
from t_point tp 
inner join m_student ms on ms.id = tp.student_id
inner join m_subject msub on tp.subject_id = msub.id
where msub.id like 'CS' and (tp.point between 60 and 80)
order by tp.point desc;

-- 9
select sa.product_id,sa.employee_id,em.employee_name,sum(sa.quantity)
from sales sa 
inner join employees em on sa.employee_id = em.employee_id
where em.employee_id<10
group by sa.product_id,em.employee_id
having sum(sa.quantity)>=100
order by sum(sa.quantity) desc,sa.product_id asc;

-- 10
insert into m_subject (id,name)
values('py','Python');

delete from m_subject
where id like 'JV';


