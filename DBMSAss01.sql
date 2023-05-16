Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| nikita             |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> CREATE DATABASE alumni;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| alumni             |
| information_schema |
| mysql              |
| nikita             |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use alumni;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE Student (
     Name varchar(50) NOT NULL,
     Sid varchar(50) NOT NULL,
     Pyear varchar(70) NOT NULL,
     Cid varchar(40) NOT NULL,
     Dname varchar(50) NOT NULL
     );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Student values(
     'Sarika kape',
      01,
      2004,
     01,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Sagar Ware',
     02,
     2004,
     02,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Rahul Ghume',
     03,
     2015,
     03,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Harsh kalra',
     04,
     1998,
     04,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Yogesh Shrivastava',
     05,
     1999,
     05,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Amit Joshi',
     06,
     2003,
     06,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'Amit kolhe',
     07,
     2004,
     07,
     'computer'
     );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Student values(
     'Rajeev koul',
     08,
     2000,
     08,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'prajkta wandekar',
     09,
     2004,
     09,
     'computer'
     );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student values(
     'prakash Admane',
     10,
     2005,
     10,
     'computer'
     );
Query OK, 1 row affected (0.00 sec)

mysql> CREATE TABLE Company (
         Cname varchar(40) NOT NULL,
        Cid varchar(50) NOT NULL,
        Post varchar(30) NOT NULL,
        Sid varchar(40) NOT NULL,
        Domain varchar(40) NOT NULL,
        Location varchar(70) NOT NULL
        );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO company values(
          'Fidelity Investment',
          01,
         'Lead software Engineer',
          01,
         'web developer',
         'Bengaluru'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
          'EXPO Optical electricals',
          02,
          'Technical lead',
          02,
         ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql>  INSERT INTO company values(
          'EXPO Optical electricals',
        02,
          'Technical lead',
          02,
          'Agile',
          'pune'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'Jaguar Land Rover',
          03,
          'Senior RPA',
         03,
         'RPA',
          'pune'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'Eggspert Nutri Innovations',
          04,
         'Managing Director',
          04,
          'xyz',
          'delhi'
         );
Query OK, 1 row affected (0.00 sec)

mysql>  INSERT INTO company values(
          'General Electric',
          05,
          'Repair',
          05,
          'Repair',
         'ohio'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'Infosys',
          06,
          'project manager',
          06,
          'project manager',
          'pune'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'samsung',
         07,
         'senior project manager',
          07,
          'abc',
          'gurgaon'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'vice president',
          08,
         'online banking product ownwer',
         08,
          'sdf',
         'pune'
          );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
         'vice president',
          09,
          'online banking product ownwer',
         09,
        'sdf',
        'pune'
         );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO company values(
          'yushh ltd',
         10,
         'found',
         10,
          'java',
          'london'
          );
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM student;
+--------------------+-----+-------+-----+----------+
| Name               | Sid | Pyear | Cid | Dname    |
+--------------------+-----+-------+-----+----------+
| Sarika kape        | 1   | 2004  | 1   | computer |
| Sagar Ware         | 2   | 2004  | 2   | computer |
| Rahul Ghume        | 3   | 2015  | 3   | computer |
| Harsh kalra        | 4   | 1998  | 4   | computer |
| Yogesh Shrivastava | 5   | 1999  | 5   | computer |
| Amit Joshi         | 6   | 2003  | 6   | computer |
| Amit kolhe         | 7   | 2004  | 7   | computer |
| Rajeev koul        | 8   | 2000  | 8   | computer |
| prajkta wandekar   | 9   | 2004  | 9   | computer |
| prakash Admane     | 10  | 2005  | 10  | computer |
+--------------------+-----+-------+-----+----------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM company;
+----------------------------+-----+-------------------------------+-----+-----------------+-----------+
| Cname                      | Cid | Post                          | Sid | Domain          | Location  |
+----------------------------+-----+-------------------------------+-----+-----------------+-----------+
| Fidelity Investment        | 1   | Lead software Engineer        | 1   | web developer   | Bengaluru |
| EXPO Optical electricals   | 2   | Technical lead                | 2   | Agile           | pune      |
| Jaguar Land Rover          | 3   | Senior RPA                    | 3   | RPA             | pune      |
| Eggspert Nutri Innovations | 4   | Managing Director             | 4   | xyz             | delhi     |
| General Electric           | 5   | Repair                        | 5   | Repair          | ohio      |
| Infosys                    | 6   | project manager               | 6   | project manager | pune      |
| samsung                    | 7   | senior project manager        | 7   | abc             | gurgaon   |
| vice president             | 8   | online banking product ownwer | 8   | sdf             | pune      |
| vice president             | 9   | online banking product ownwer | 9   | sdf             | pune      |
| yushh ltd                  | 10  | found                         | 10  | java            | london    |
+----------------------------+-----+-------------------------------+-----+-----------------+-----------+
10 rows in set (0.00 sec)

mysql> ALTER TABLE student ADD MobileNumber varchar(30);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE person (
           ID int NOT NULL,
             LastName varchar(255) NOT NULL,
             FirstName varchar(255) NOT NULL,
             Age int
         );
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+------------------+
| Tables_in_alumni |
+------------------+
| company          |
| persons          |
| student          |
+------------------+
3 rows in set (0.00 sec)

mysql> DROP TABLE persons;
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+------------------+
| Tables_in_alumni |
+------------------+
| company          |
| student          |
+------------------+
2 rows in set (0.00 sec)

mysql> RENAME TABLE student TO Alumni;
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+------------------+
| Tables_in_alumni |
+------------------+
| alumni           |
| company          |
+------------------+
2 rows in set (0.00 sec)

mysql> UPDATE company
          SET Cname='SCOE', Post='Managing Trustee',Domain='Management',Location='kopargoan'
          WHERE Cid=07;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE company
          SET Cname='Technossus',Post='Director program',Domain='Software Engineer',Location='Pune'
          WHERE Cid=08;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  SELECT * FROM company;
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
| Cname                      | Cid | Post                          | Sid | Domain            | Location  |
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
| Fidelity Investment        | 1   | Lead software Engineer        | 1   | web developer     | Bengaluru |
| EXPO Optical electricals   | 2   | Technical lead                | 2   | Agile             | pune      |
| Jaguar Land Rover          | 3   | Senior RPA                    | 3   | RPA               | pune      |
| Eggspert Nutri Innovations | 4   | Managing Director             | 4   | xyz               | delhi     |
| General Electric           | 5   | Repair                        | 5   | Repair            | ohio      |
| Infosys                    | 6   | project manager               | 6   | project manager   | pune      |
| SCOE                       | 7   | Managing Trustee              | 7   | Management        | kopargoan |
| Technossus                 | 8   | Director program              | 8   | Software Engineer | Pune      |
| vice president             | 9   | online banking product ownwer | 9   | sdf               | pune      |
| yushh ltd                  | 10  | found                         | 10  | java              | london    |
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
10 rows in set (0.00 sec)

mysql> ALTER TABLE alumni MODIFY sid int(30);
Query OK, 10 rows affected, 1 warning (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 1

mysql> SELECT * FROM alumni
         WHERE
         Dname='computer';
+--------------------+------+-------+-----+----------+--------------+
| Name               | sid  | Pyear | Cid | Dname    | MobileNumber |
+--------------------+------+-------+-----+----------+--------------+
| Sarika kape        |    1 | 2004  | 1   | computer | NULL         |
| Sagar Ware         |    2 | 2004  | 2   | computer | NULL         |
| Rahul Ghume        |    3 | 2015  | 3   | computer | NULL         |
| Harsh kalra        |    4 | 1998  | 4   | computer | NULL         |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer | NULL         |
| Amit Joshi         |    6 | 2003  | 6   | computer | NULL         |
| Amit kolhe         |    7 | 2004  | 7   | computer | NULL         |
| Rajeev koul        |    8 | 2000  | 8   | computer | NULL         |
| prajkta wandekar   |    9 | 2004  | 9   | computer | NULL         |
| prakash Admane     |   10 | 2005  | 10  | computer | NULL         |
+--------------------+------+-------+-----+----------+--------------+
10 rows in set (0.00 sec)

mysql> ALTER TABLE alumni
      DROP COLUMN MobileNumber;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM alumni;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        |    1 | 2004  | 1   | computer |
| Sagar Ware         |    2 | 2004  | 2   | computer |
| Rahul Ghume        |    3 | 2015  | 3   | computer |
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Amit Joshi         |    6 | 2003  | 6   | computer |
| Amit kolhe         |    7 | 2004  | 7   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
| prajkta wandekar   |    9 | 2004  | 9   | computer |
| prakash Admane     |   10 | 2005  | 10  | computer |
+--------------------+------+-------+-----+----------+
10 rows in set (0.00 sec)

mysql> use nikita;
Database changed
mysql> TRUNCATE TABLE company;
Query OK, 0 rows affected (0.03 sec)

mysql>  SELECT * FROM company;
Empty set (0.00 sec)

mysql> DROP DATABASE nikita;
Query OK, 2 rows affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| alumni             |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql>
 SELECT Name
    -> FROM alumni
    -> WHERE sid= ALL(SELECT Cname FROM company WHERE location='pune');
Empty set, 10 warnings (0.01 sec)
 SELECT * FROM company
    -> WHERE location='pune' AND Post='project manager';
+---------+-----+-----------------+-----+-----------------+----------+
| Cname   | Cid | Post            | Sid | Domain          | Location |
+---------+-----+-----------------+-----+-----------------+----------+
| Infosys | 6   | project manager | 6   | project manager | pune     |
+---------+-----+-----------------+-----+-----------------+----------+
1 row in set (0.00 sec)
SELECT * FROM alumni
    -> WHERE Pyear> ANY( SELECT Pyear FROM alumni WHERE Pyear>2004);
+-------------+------+-------+-----+----------+
| Name        | sid  | Pyear | Cid | Dname    |
+-------------+------+-------+-----+----------+
| Rahul Ghume |    3 | 2015  | 3   | computer |
+-------------+------+-------+-----+----------+
1 row in set (0.01 sec)

mysql>
mysql> SELECT * FROM alumni
    -> WHERE Pyear BETWEEN 1998 and 2003;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Amit Joshi         |    6 | 2003  | 6   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
+--------------------+------+-------+-----+----------+
4 rows in set (0.01 sec)

mysql>mysql> SELECT * FROM alumni
    -> WHERE Pyear BETWEEN 1998 and 2003;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Amit Joshi         |    6 | 2003  | 6   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
+--------------------+------+-------+-----+----------+
4 rows in set (0.01 sec)

mysql>
SELECT Name
    -> FROM alumni
    -> WHERE EXISTS (SELECT Cname FROM company WHERE company.sid=alumni.sid
AND Pyear<2009);
+--------------------+
| Name               |
+--------------------+
| Sarika kape        |
| Sagar Ware         |
| Harsh kalra        |
| Yogesh Shrivastava |
| Amit Joshi         |
| Amit kolhe         |
| Rajeev koul        |
| prajkta wandekar   |
| prakash Admane     |
+--------------------+
9 rows in set (0.01 sec)

mysql> SELECT Name
    -> FROM alumni
    -> WHERE EXISTS (SELECT Cname FROM company WHERE company.sid=alumni.sid AND Cid<8);
+--------------------+
| Name               |
+--------------------+
| Sarika kape        |
| Sagar Ware         |
| Rahul Ghume        |
| Harsh kalra        |
| Yogesh Shrivastava |
| Amit Joshi         |
| Amit kolhe         |
+--------------------+
7 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM company
    -> WHERE location IN('pune','London');
+--------------------------+-----+-------------------------------+-----+-------------------+----------+
| Cname                    | Cid | Post                          | Sid | Domain            | Location |
+--------------------------+-----+-------------------------------+-----+-------------------+----------+
| EXPO Optical electricals | 2   | Technical lead                | 2   | Agile             | pune     |
| Jaguar Land Rover        | 3   | Senior RPA                    | 3   | RPA               | pune     |
| Infosys                  | 6   | project manager               | 6   | project manager   | pune     |
| Technossus               | 8   | Director program              | 8   | Software Engineer | Pune     |
| vice president           | 9   | online banking product ownwer | 9   | sdf               | pune     |
| yushh ltd                | 10  | found                         | 10  | java              | london   |
+--------------------------+-----+-------------------------------+-----+-------------------+----------+
6 rows in set (0.00 sec)

mysql>SELECT * FROM alumni
    -> WHERE Name LIKE 'a%';
+------------+------+-------+-----+----------+
| Name       | sid  | Pyear | Cid | Dname    |
+------------+------+-------+-----+----------+
| Amit Joshi |    6 | 2003  | 6   | computer |
| Amit kolhe |    7 | 2004  | 7   | computer |
+------------+------+-------+-----+----------+
2 rows in set (0.00 sec)

mysql>mysql> SELECT * FROM alumni
    -> WHERE Name NOT LIKE 'a%';
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        |    1 | 2004  | 1   | computer |
| Sagar Ware         |    2 | 2004  | 2   | computer |
| Rahul Ghume        |    3 | 2015  | 3   | computer |
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
| prajkta wandekar   |    9 | 2004  | 9   | computer |
| prakash Admane     |   10 | 2005  | 10  | computer |
+--------------------+------+-------+-----+----------+
8 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM alumni
    -> WHERE Pyear =2004 OR Dname='computer';
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        |    1 | 2004  | 1   | computer |
| Sagar Ware         |    2 | 2004  | 2   | computer |
| Rahul Ghume        |    3 | 2015  | 3   | computer |
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Amit Joshi         |    6 | 2003  | 6   | computer |
| Amit kolhe         |    7 | 2004  | 7   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
| prajkta wandekar   |    9 | 2004  | 9   | computer |
| prakash Admane     |   10 | 2005  | 10  | computer |
+--------------------+------+-------+-----+----------+
10 rows in set (0.00 sec)
mysql> SELECT * FROM company
    -> WHERE cid > SOME(SELECT cid FROM company WHERE cid<5);
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
| Cname                      | Cid | Post                          | Sid | Domain            | Location  |
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
| EXPO Optical electricals   | 2   | Technical lead                | 2   | Agile             | pune      |
| Jaguar Land Rover          | 3   | Senior RPA                    | 3   | RPA               | pune      |
| Eggspert Nutri Innovations | 4   | Managing Director             | 4   | xyz               | delhi     |
| General Electric           | 5   | Repair                        | 5   | Repair            | ohio      |
| Infosys                    | 6   | project manager               | 6   | project manager   | pune      |
| SCOE                       | 7   | Managing Trustee              | 7   | Management        | kopargoan |
| Technossus                 | 8   | Director program              | 8   | Software Engineer | Pune      |
| vice president             | 9   | online banking product ownwer | 9   | sdf               | pune      |
| yushh ltd                  | 10  | found                         | 10  | java              | london    |
+----------------------------+-----+-------------------------------+-----+-------------------+-----------+
9 rows in set (0.00 sec)

mysql>
mysql> SELECT Cname ,COUNT(*)
    -> FROM company
    -> GROUP BY Cname
    -> HAVING COUNT(*)=1;
+----------------------------+----------+
| Cname                      | COUNT(*) |
+----------------------------+----------+
| Fidelity Investment        |        1 |
| EXPO Optical electricals   |        1 |
| Jaguar Land Rover          |        1 |
| Eggspert Nutri Innovations |        1 |
| General Electric           |        1 |
| Infosys                    |        1 |
| SCOE                       |        1 |
| Technossus                 |        1 |
| vice president             |        1 |
| yushh ltd                  |        1 |
+----------------------------+----------+
10 rows in set (0.00 sec)

mysql>
mysql> SELECT Name ,SUM(Pyear)
    -> FROM alumni
    -> GROUP BY Name
    -> HAVING SUM(Pyear)=2004;
+------------------+------------+
| Name             | SUM(Pyear) |
+------------------+------------+
| Sarika kape      |       2004 |
| Sagar Ware       |       2004 |
| Amit kolhe       |       2004 |
| prajkta wandekar |       2004 |
+------------------+------------+
4 rows in set (0.01 sec)


mysql> SELECT AVG(sid)
    -> FROM alumni;
+----------+
| AVG(sid) |
+----------+
|   5.5000 |
+----------+
1 row in set (0.01 sec)

mysql>
mysql> SELECT MAX(cid)
    -> FROM company;
+----------+
| MAX(cid) |
+----------+
| 9        |
+----------+
1 row in set (0.00 sec)

mysql>

mysql> SELECT MIN(cid)
    -> FROM company;
+----------+
| MIN(cid) |
+----------+
| 1        |
+----------+
1 row in set (0.00 sec)

mysql>mysql> SELECT * FROM alumni UNION SELECT * FROM Student;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        | 1    | 2004  | 1   | computer |
| Sagar Ware         | 2    | 2004  | 2   | computer |
| Rahul Ghume        | 3    | 2015  | 3   | computer |
| Harsh kalra        | 4    | 1998  | 4   | computer |
| Yogesh Shrivastava | 5    | 1999  | 5   | computer |
| Amit Joshi         | 6    | 2003  | 6   | computer |
| Amit kolhe         | 7    | 2004  | 7   | computer |
| Rajeev koul        | 8    | 2000  | 8   | computer |
| prajkta wandekar   | 9    | 2004  | 9   | computer |
| prakash Admane     | 10   | 2005  | 10  | computer |
| Nikita bhawar      | 11   | 2004  | 11  | computer |
| Sayali             | 12   | 2004  | 12  | computer |
| Gaytari            | 13   | 2015  | 13  | computer |
| Harshal            | 14   | 1998  | 14  | computer |
| Yashika            | 15   | 1999  | 15  | computer |
+--------------------+------+-------+-----+----------+
15 rows in set (0.00 sec)
mysql> SELECT * FROM alumni UNION ALL SELECT * FROM Student;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        | 1    | 2004  | 1   | computer |
| Sagar Ware         | 2    | 2004  | 2   | computer |
| Rahul Ghume        | 3    | 2015  | 3   | computer |
| Harsh kalra        | 4    | 1998  | 4   | computer |
| Yogesh Shrivastava | 5    | 1999  | 5   | computer |
| Amit Joshi         | 6    | 2003  | 6   | computer |
| Amit kolhe         | 7    | 2004  | 7   | computer |
| Rajeev koul        | 8    | 2000  | 8   | computer |
| prajkta wandekar   | 9    | 2004  | 9   | computer |
| prakash Admane     | 10   | 2005  | 10  | computer |
| Nikita bhawar      | 11   | 2004  | 11  | computer |
| Sayali             | 12   | 2004  | 12  | computer |
| Gaytari            | 13   | 2015  | 13  | computer |
| Harshal            | 14   | 1998  | 14  | computer |
| Yashika            | 15   | 1999  | 15  | computer |
+--------------------+------+-------+-----+----------+
15 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM alumni INTERSECT SELECT * FROM Student;
+------------------+-----+-------+-----+----------+
| Name             | sid | Pyear | Cid | Dname    |
+------------------+-----+-------+-----+----------+
| Amit kolhe       | 7   | 2004  | 7   | computer |
| prajkta wandekar | 9   | 2004  | 9   | computer |
| prakash Admane   | 10  | 2005  | 10  | computer |
+------------------+-----+-------+-----+----------+
3 rows in set (0.00 sec)
mysql> CREATE VIEW ALUMNI1
    -> AS
    -> SELECT * FROM alumni WHERE Dname='computer';
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM ALUMNI1;
+--------------------+------+-------+-----+----------+
| Name               | sid  | Pyear | Cid | Dname    |
+--------------------+------+-------+-----+----------+
| Sarika kape        |    1 | 2004  | 1   | computer |
| Sagar Ware         |    2 | 2004  | 2   | computer |
| Rahul Ghume        |    3 | 2015  | 3   | computer |
| Harsh kalra        |    4 | 1998  | 4   | computer |
| Yogesh Shrivastava |    5 | 1999  | 5   | computer |
| Amit Joshi         |    6 | 2003  | 6   | computer |
| Amit kolhe         |    7 | 2004  | 7   | computer |
| Rajeev koul        |    8 | 2000  | 8   | computer |
| prajkta wandekar   |    9 | 2004  | 9   | computer |
| prakash Admane     |   10 | 2005  | 10  | computer |
+--------------------+------+-------+-----+----------+
10 rows in set (0.01 sec)

mysql>
mysql> CREATE VIEW ALUMNI2
    -> AS
    -> SELECT Name,sid FROM alumni
    -> WHERE Dname='computer';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM ALUMNI2;
+--------------------+------+
| Name               | sid  |
+--------------------+------+
| Sarika kape        |    1 |
| Sagar Ware         |    2 |
| Rahul Ghume        |    3 |
| Harsh kalra        |    4 |
| Yogesh Shrivastava |    5 |
| Amit Joshi         |    6 |
| Amit kolhe         |    7 |
| Rajeev koul        |    8 |
| prajkta wandekar   |    9 |
| prakash Admane     |   10 |
+--------------------+------+
10 rows in set (0.00 sec)

mysql>mysql> CREATE VIEW ALUMNI3
    -> AS
    -> SELECT * FROM company
    -> WHERE cid<3;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM ALUMNI3;
+--------------------------+-----+------------------------+-----+---------------+-----------+
| Cname                    | Cid | Post                   | Sid | Domain        | Location  |
+--------------------------+-----+------------------------+-----+---------------+-----------+
| Fidelity Investment      | 1   | Lead software Engineer | 1   | web developer | Bengaluru |
| EXPO Optical electricals | 2   | Technical lead         | 2   | Agile         | pune      |
+--------------------------+-----+------------------------+-----+---------------+-----------+
2 rows in set (0.00 sec)

mysql>
mysql> SELECT alumni.sid, company.cname, alumni.Pyear
    -> FROM alumni
    -> INNER JOIN company ON alumni.cid=company.cid;
+------+----------------------------+-------+
| sid  | cname                      | Pyear |
+------+----------------------------+-------+
|    1 | Fidelity Investment        | 2004  |
|    2 | EXPO Optical electricals   | 2004  |
|    3 | Jaguar Land Rover          | 2015  |
|    4 | Eggspert Nutri Innovations | 1998  |
|    5 | General Electric           | 1999  |
|    6 | Infosys                    | 2003  |
|    7 | SCOE                       | 2004  |
|    8 | Technossus                 | 2000  |
|    9 | vice president             | 2004  |
|   10 | yushh ltd                  | 2005  |
+------+----------------------------+-------+
10 rows in set (0.04 sec)

mysql>
mysql> SELECT alumni.Name, company.Post
    -> FROM ALUMNI
    -> LEFT JOIN company ON alumni.cid=company.sid;
+--------------------+-------------------------------+
| Name               | Post                          |
+--------------------+-------------------------------+
| Sarika kape        | Lead software Engineer        |
| Sagar Ware         | Technical lead                |
| Rahul Ghume        | Senior RPA                    |
| Harsh kalra        | Managing Director             |
| Yogesh Shrivastava | Repair                        |
| Amit Joshi         | project manager               |
| Amit kolhe         | Managing Trustee              |
| Rajeev koul        | Director program              |
| prajkta wandekar   | online banking product ownwer |
| prakash Admane     | found                         |
+--------------------+-------------------------------+
10 rows in set (0.00 sec)

mysql>
mysql> SELECT alumni.sid, company.cname, alumni.Pyear
    -> FROM alumni
    -> RIGHT JOIN company ON alumni.cid=company.cid
    -> ORDER BY alumni.sid;
+------+----------------------------+-------+
| sid  | cname                      | Pyear |
+------+----------------------------+-------+
|    1 | Fidelity Investment        | 2004  |
|    2 | EXPO Optical electricals   | 2004  |
|    3 | Jaguar Land Rover          | 2015  |
|    4 | Eggspert Nutri Innovations | 1998  |
|    5 | General Electric           | 1999  |
|    6 | Infosys                    | 2003  |
|    7 | SCOE                       | 2004  |
|    8 | Technossus                 | 2000  |
|    9 | vice president             | 2004  |
|   10 | yushh ltd                  | 2005  |
+------+----------------------------+-------+
10 rows in set (0.00 sec)

mysql>

