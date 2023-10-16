# dang nhap

- mo `sql shell`
- dang nhap vao supper admin cua PQ - la user thiet dat khi cai dat QP
- sau khi dang nhap xong moi thuc hien duoc cac thao tac voi database khac
-

# thao tac

- cau lenh `\l` de hien thi all DB co trong PQ hoac `SELECT datname FROM pg_database WHERE datistemplate = false;`
- cau lenh `CREATE DATABASE db-name;` de tao new DB;
- xoa db `drop database db-name;`
- connect to DB `\c db-name`;

## tao & chuyen doi super.user

- hien thi d/s cac users `\du`
- tao user binh thuong: `create user bob with password 'mypass'`
- tao supper user voi `create user`:
  - su dung `CREATE USER user_name SUPERUSER;`
  - set quyen `CREATE ROLE user_name SUPERUSER LOGIN PASSWORD 'password';`
- chuyen change/alter user thuong thanh superuser: `ALTER USER user_name WITH SUPERUSER;`

## hien thi danh sach schema, tables trong 1 DB

1.get all tables and views from information_schema.tables, include those of information_schema and pg_catalog.
`select * from information_schema.tables`

2.get tables and views belong certain schema

```sql
select * from information_schema.tables
where table_schema not in ('information_schema', 'pg_catalog')
```

3.get tables only(almost \dt)

```sql
select * from information_schema.tables
where table_schema not in ('information_schema', 'pg_catalog') and
table_type = 'BASE TABLE'
```

- select manual to get tables list from a schema:

```sql
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema='public'
    AND table_type='BASE TABLE';
```

- If you want list of tables from current pg installation of all databases

```sql
SELECT table_schema,table_name FROM information_schema.tables
ORDER BY table_schema,table_name;
```

## create table

- tao schema `create schema friends;`
- tao table trong schema `create table friends.test(firstname CHAR(15), lastname CHAR(20));`
- xem cau truc/structure cua table `\d friends.test`; syntax: schema.table
-
