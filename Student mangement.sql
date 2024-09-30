CREATE DATABASE Student_management;
use Student_management

CREATE TABLE student
(
sid char(4) primary key,
sname varchar(20),
sdob date,
scity varchar(20),
squal varchar(20),
semail varchar(30),
sphone varchar(20)
);

CREATE TABLE course
(
courseid char(4) primary key,
coursename varchar(40),
coursecategory varchar(20),
coursefees  decimal(10,2),
courseduration int 
);


CREATE TABLE batch
(
batchid char(4) primary key,
bsdate date,
bstrength int,
courseid char(4) 
)

CREATE TABLE enrollment
(
batchid char(4),
sid char(4),
edate date,
primary key(batchid,sid)
);


insert into student values('s001','rajesh','1980-12-17','kolkata','graduate','rajesh@gmail.com','09830978900');
insert into student values('s002','john','1949-1-7','hyderabad','postgraduate','john@yahoo.com','9833978933');
insert into student values('s003','kunal','1967-2-3','pune','postgraduate','kunal@gmail.com','09830922900');
insert into student values('s004','maya','1990-12-17','kolkata','graduate','maya.com','09830765900');
insert into student values('s005','jadeja','1940-1-23','kolkata','postgraduate','jadeja@yahoo.com','09837865432');
insert into student values('s006','suman','1995-6-17','kolkata','undergraduate','suman@gmail.com','0983097890');
insert into student values('s007','soha','1990-7-17','mumbai','undergraduate',null,null);
insert into student values('s008','thapa','1980-8-17','assam','graduate','thapa@gmail.com','19830978900');
insert into student values('s009','hira','1954-9-17','mumbai','postgraduate','hira@gmail.com','09234097890');
insert into student values('s010','akash','1977-1-27','kolkata','postgraduate','akash@gmail.com',null);
insert into student values('s011','amir','1992-1-1','delhi','undergraduate','amirgmail.com','09831118900');
insert into student values('s012','ramesh','1980-12-17','kolkata','graduate','ramesh@yahoo.com','09830918900');
insert into student values('s013','suresh','1980-3-22','kolkata','graduate','suresh@gmail.com','09830978912');
insert into student values('s014','amir','1945-1-13','delhi','postgraduate','amir123@rediffmail.com','29830978900');
insert into student values('s015','esha','1981-10-30','mumbai','graduate','esha@gmail.com','09831378900');
insert into student values('s016','gopichand','1966-5-7','assam','postgraduate','gopi@gmail.com','09831918100');
insert into student values('s017','sonali','1995-11-11','mumbai','undergraduate','sonali@gmail.com','09855978900');
insert into student values('s018','lisa','1983-1-31','delhi','graduate','lisa@gmail.com','09832978923');
insert into student values('s019','smith','1980-12-17','pune','graduate','smith@yahoo.com','09831111900');
insert into student values('s020','rajesh','1994-7-8','pune','graduate','rajesh@gmail.com','09830978900');


insert into course values('c001','sql server','compsc',1000,40);
insert into course values('c002','compmat','civileng',3000,120);
insert into course values('c003','biomaths','biotech',4000,160);
insert into course values('c004','word','compsc',500,8);
insert into course values('c005','photo','compsc',800,8);

insert into batch values('b001','2013-02-01 09:30' ,10, 'c001');
insert into batch values('b002','2013-03-01 09:30' ,10, 'c002');
insert into batch values('b003','2013-01-01 09:30' ,10, 'c003');
insert into batch values('b004','2013-03-31 09:30' ,10, 'c003');
insert into batch values('b005','2013-04-04 09:30' ,10, 'c005');
insert into batch values('b006','2013-01-27 09:30' ,10, 'c002');
insert into batch values('b007','2012-11-30 09:30' ,10, 'c004');
insert into batch values('b008','2013-01-28 09:30' ,10, 'c002');
insert into batch values('b009','2013-02-16 09:30' ,10,'c001');
insert into batch values('b010','2012-12-12 09:30' ,10, 'c003');

insert into enrollment values('b001','s001','2013-01-01');
insert into enrollment values('b001','s002','2013-01-31');
insert into enrollment values('b001','s003','2013-01-11');
insert into enrollment values('b001','s004','2013-02-02');
insert into enrollment values('b001','s005','2013-01-01');
insert into enrollment values('b001','s006','2013-01-01');
insert into enrollment values('b001','s007','2013-01-01');
insert into enrollment values('b001','s008','2013-01-01');
insert into enrollment values('b001','s009','2013-01-01');
insert into enrollment values('b002','s010','2013-02-01');
insert into enrollment values('b002','s012','2013-02-27');
insert into enrollment values('b002','s014','2013-01-21');
insert into enrollment values('b002','s016','2013-01-12');
insert into enrollment values('b002','s017','2013-02-15');
insert into enrollment values('b003','s018','2013-12-11');
insert into enrollment values('b003','s019','2013-02-27');
insert into enrollment values('b003','s020','2013-01-21');
insert into enrollment values('b003','s013','2013-01-01');
insert into enrollment values('b003','s007','2013-12-15');
insert into enrollment values('b003','s008','2013-11-25');
insert into enrollment values('b004','s001','2013-02-11');
insert into enrollment values('b004','s003','2013-02-27');
insert into enrollment values('b004','s006','2013-01-21');
insert into enrollment values('b004','s009','2013-03-01');
insert into enrollment values('b005','s001','2013-02-11');
insert into enrollment values('b005','s003','2013-02-27');
insert into enrollment values('b005','s006','2013-03-21');
insert into enrollment values('b005','s009','2013-04-01');
insert into enrollment values('b006','s001','2013-01-11');
insert into enrollment values('b006','s003','2012-12-27');
insert into enrollment values('b006','s006','2013-01-11');
insert into enrollment values('b006','s009','2013-01-01');
insert into enrollment values('b006','s007','2013-01-13');
insert into enrollment values('b006','s002','2012-12-17');
insert into enrollment values('b006','s008','2013-01-21');
insert into enrollment values('b006','s005','2013-01-01');
insert into enrollment values('b007','s001','2012-11-11');
insert into enrollment values('b007','s002','2012-11-11');
insert into enrollment values('b007','s003','2012-11-21');
insert into enrollment values('b007','s004','2012-11-13');
insert into enrollment values('b007','s007','2012-10-13');
insert into enrollment values('b007','s010','2012-10-17');
insert into enrollment values('b007','s009','2012-12-01');
insert into enrollment values('b008','s011','2012-11-11');
insert into enrollment values('b008','s012','2012-11-11');
insert into enrollment values('b008','s013','2012-11-21');
insert into enrollment values('b008','s014','2012-11-13');
insert into enrollment values('b008','s017','2012-10-13');
insert into enrollment values('b008','s020','2012-10-17');
insert into enrollment values('b008','s019','2012-12-01');
insert into enrollment values('b009','s001','2012-11-11');
insert into enrollment values('b009','s012','2012-11-11');
insert into enrollment values('b009','s013','2012-11-21');
insert into enrollment values('b009','s004','2012-11-13');
insert into enrollment values('b009','s007','2012-10-13');
insert into enrollment values('b009','s010','2012-10-17');
insert into enrollment values('b009','s009','2012-12-01');
insert into enrollment values('b010','s011','2012-11-11');
insert into enrollment values('b010','s002','2012-11-11');
insert into enrollment values('b010','s003','2012-11-21');
insert into enrollment values('b010','s014','2012-11-13');
insert into enrollment values('b010','s017','2012-10-13');
insert into enrollment values('b010','s010','2012-10-17');
insert into enrollment values('b010','s009','2012-12-01');

select * from student
select * from course
select * from batch
select * from enrollment


---Question 1 : How many students are from each city?
SELECT scity, COUNT(sname) AS Tstudent FROM student GROUP BY scity

---Question 2 : Which course has the highest enrollment?
select coursename,sum(bstrength) as total from course join batch on course.courseid = batch.courseid group by coursename order by total desc limit 1

---Question 3 : What is the average strength of each batch?
select  batchid,avg(bstrength) as average from batch group by batchid

---Question 4 : How many students have completed postgraduate studies?
select count(*) as completed from student where squal = 'postgraduate' 

---Question 5 : Which batches have students enrolled after ‘2013-01-01’?
select distinct batchid from enrollment where edate > '2013-01-01' 

---Question 6 : Which students have missing email addresses or phone numbers?
select sname from student where semail is null or sphone is null

---Question 7 : What is the total revenue generated from each course?
select coursename,sum(coursefees * bstrength) as total_revenue from course join batch on course.courseid = batch.courseid group by coursename

---Question 8 : Are there any students with the same name in the database?
select sname,count(*) from student group by sname having count(*) > 1

--- Question 9 : What is the total duration of all courses offered?
select sum(courseduration) as total from course









