select * from subject

---1) find total semester for each teacher 

select teacher, sum(semester) as total_semester from subject
group by teacher

--2) select semester count from subject where semester not null

select semester ,count(*)from subject
	where semester is not null
	group by semester
	having count (*)>3

--3) the avg semester for subject in each department, semester is greater than 3

select department, avg (semester) as average_semester from subject
group by department having avg(semester)>=3

select * from subject
	
--4) count of subjects each teaches science department

select teacher, count(name) as subjects_name from subject
where department = 'science' group by teacher

--5) find max semester for any subject taught by each teacher

select teacher, max(semester) as max_semester from subject group by teacher

--6) total num of subjects and their avg semester in each department where total subject is > 3
	
select department, count(name) as name_subjects, avg(semester) as avg_semester from subject
group by department having count(subjects_id)>3

---7) the min semester for each teacher from subject in arts 

select teacher, min(semester) as min_semester from subject
where department='arts' group by teacher

select * from subject
	
--8) total semester & num of subjects_name for each teacher, if semester >4

select teacher, sum(semester) as total_semester, count(name) as name_subject from subject
group by teacher having sum(semester)>4

--9) retrieve the department where the avg semester are between 3 and 4

select department, avg(semester) as average_semester from subject
group by department having avg(semester) between 3 and 4

--10) to find total semester for each department, but only for those department where the avg semester per subject>3

select department, sum(semester) as total_semester from subject
group by department having avg(semester)>3


