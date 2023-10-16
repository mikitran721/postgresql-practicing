# start PostgreSql server

# open `SQLSHELL`

# Login with superuser

# create DB

- cau lenh `CREATE DATABASE hello ;`
- List all DB: `\l ;`
- connect DB `\c hello ;`
-

# Create Schema

- tao schema `create schema test`
-

# create table

- tao table `create table test.students(id char(3),name char(15),address char(20)) ;`
- xem cau truc table `\d test.students`
- check data `select * from test.students ;`
- tao moi du lieu `insert into test.students values('001','Poo','HCMC, Vietnam');`
- show data `select * from test.students ;`

# data action: create, select
