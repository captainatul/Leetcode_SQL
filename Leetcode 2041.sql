use db 


#Creating_table 

create table candidates (
candidate_id int , 
name varchar(20),
years_of_exp int , 
interview_id int ) 

#Inserting_Values
insert into candidates values (11, 'Atticus' , 1 , 101) ,(9,'Ruben',6,104),(6,'Aliza',10,109),(8,'Alfredo',0,107)

# CReating_Table

create table rounds (
interview_id int , 
round_id int , 
score int ) 

#Inserting_values

insert into rounds values (109,3,4),(101,2,8),(109,4,1),(107,1,3),(104,3,6),(109,1,4),(104,4,7),(104,1,2),(109,2,1),(104,2,7),(107,2,3),(101,1,8)

/*Write an SQL query to report the IDs of the candidates who have at least two years of experience and the sum of the score of

their interview rounds is strictly greater than 15.
Return the result table in any order. */


select c.candidate_id   from candidates c join rounds r on c.interview_id = r.interview_id
where years_of_exp >= 2
group by c.candidate_id
having SUM(score)>15