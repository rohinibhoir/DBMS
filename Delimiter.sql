
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 47
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use assi7;
Database changed
mysql> drop table result;
Query OK, 0 rows affected (0.02 sec)

mysql> drop table stud_marks;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Stud_Marks(
    ->  RollNo INT PRIMARY KEY,
    ->     Sname VARCHAR(20),
    ->     Total_Marks INT
    ->     );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> INSERT INTO Stud_Marks VALUES
    ->  (1, 'Rhtuja', 995),
    ->  (2, 'Vaishnavi', 828),
    ->  (3, 'Bhagya', 945),
    ->  (4, 'Rohini', 1500),
    ->  (5, 'Rohit', 900),
    ->  (6, 'Sachin', 850),
    ->  (7, 'Sam', 800),
    ->  (8, 'Aadya', 899),
    ->  (9, 'Mamta', 1300),
    ->  (10, 'Aditi', 920);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql>
mysql> CREATE TABLE Result(
    ->  RollNo INT REFERENCES Stud_Marks(RollNo),
    ->     Sname VARCHAR(20),
    ->     Marks INT,
    ->     Grade VARCHAR(20)
    ->     );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER $$
mysql> CREATE PROCEDURE proc_Grade(
    ->  IN roll INT,
    ->     IN marks INT
    -> )
    ->  BEGIN
    ->          DECLARE student VARCHAR(20);
    ->          DECLARE EXIT HANDLER FOR SQLEXCEPTION SELECT 'ENTRY NOT FOUND' AS EXCEPTION;
    ->
    ->         IF NOT EXISTS(SELECT * FROM  Stud_Marks WHERE RollNo = roll AND Total_Marks = marks) THEN
    ->                  SIGNAL SQLSTATE '45000';
    ->          END IF;
    ->
    ->          SELECT Sname INTO student
    ->                  FROM Stud_Marks
    ->             WHERE RollNo = roll AND Total_Marks = marks;
    ->
    ->          IF marks >= 990 AND marks <= 1500 THEN
    ->                  INSERT INTO Result
    ->                          VALUES(roll, student, marks, "Distinction");
    ->          ELSEIF marks >= 900 AND marks <= 989 THEN
    ->                  INSERT INTO Result
    ->                          VALUES(roll, student, marks, "First Class");
    ->          ELSEIF marks >= 825 AND marks <= 899 THEN
    ->                  INSERT INTO Result
    ->                          VALUES(roll, student, marks, "Higher Second Class");
    ->          ELSE
    ->                  INSERT INTO Result VALUES(roll, student, marks, NULL);
    ->          END IF;
    ->
    ->          SELECT * FROM Result;
    ->  END $$
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL proc_Grade(1, 995);
+--------+--------+-------+-------------+
| RollNo | Sname  | Marks | Grade       |
+--------+--------+-------+-------------+
|      1 | Rhutuja|   995 | Distinction |
+--------+--------+-------+-------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(2, 828);
+--------+--------+-------+---------------------+
| RollNo | Sname    | Marks | Grade              |
+--------+--------+-------+---------------------+
|      1 |Rhutuja  |   995 | Distinction         |
|      2 |Vaishnavi|   828 | Higher Second Class |
+--------+--------+-------+---------------------+
2 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(3, 945);
+--------+---------+-------+---------------------+
| RollNo | Sname   | Marks | Grade               |
+--------+---------+-------+---------------------+
|      1 |Rhutuja  |   995 | Distinction         |
|      2 |Vaishnavi|   828 | Higher Second Class |
|      3 |Bhagya   |   945 | First Class         |
+--------+---------+-------+---------------------+
3 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(4, 1500);
+--------+---------+-------+---------------------+
| RollNo | Sname   | Marks | Grade               |
+--------+---------+-------+---------------------+
|      1 |Rhutuja  |   995 | Distinction         |
|      2 |Vaishnavi|   828 | Higher Second Class |
|      3 |Bhagya   |   945 | First Class         |
|      4 |Rohini   |  1500 | Distinction         |
+--------+---------+-------+---------------------+
4 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(5, 900);
+--------+---------+-------+---------------------+
| RollNo | Sname   | Marks | Grade               |
+--------+---------+-------+---------------------+
|      1 |Rhutuja  |   995 | Distinction         |
|      2 |Vaishnavi|   828 | Higher Second Class |
|      3 |Bhagya   |   945 | First Class         |
|      4 |Rohini   |  1500 | Distinction         |
|      5 |Rohit    |   900 | First Class         |
+--------+---------+-------+---------------------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(6, 850);
+--------+---------+-------+---------------------+
| RollNo | Sname   | Marks | Grade               |
+--------+---------+-------+---------------------+
|      1 |Rhutuja  |   995 | Distinction         |
|      2 |Vaishnavi|   828 | Higher Second Class |
|      3 |Bhagya   |   945 | First Class         |
|      4 |Rohini   |  1500 | Distinction         |
|      5 |Rohit    |   900 | First Class         |
|      6 |Sachin   |   850 | Higher Second Class |
+--------+---------+-------+---------------------+
6 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(7, 800);
+--------+----------+-------+---------------------+
| RollNo | Sname    | Marks | Grade               |
+--------+----------+-------+---------------------+
|      1 |Rhutuja   |   995 | Distinction         |
|      2 |Vaishnavi |   828 | Higher Second Class |
|      3 |Bhagya    |   945 | First Class         |
|      4 |Rohini    |  1500 | Distinction         |
|      5 |Rohit     |   900 | First Class         |
|      6 |Sachin    |   850 | Higher Second Class |
|      7 |Sam       |   800 | NULL                |
+--------+----------+-------+---------------------+
7 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL proc_Grade(8, 899);
+--------+----------+-------+---------------------+
| RollNo | Sname    | Marks | Grade               |
+--------+----------+-------+---------------------+
|      1 |Rhutuja   |   995 | Distinction         |
|      2 |Vaishnavi |   828 | Higher Second Class |
|      3 |Bhagya    |   945 | First Class         |
|      4 |Rohini    |  1500 | Distinction         |
|      5 |Rohit     |   900 | First Class         |
|      6 |Sachin    |   850 | Higher Second Class |
|      7 |Sam       |   800 | NULL                |
|      8 |Aadya     |   899 | Higher Second Class |
+--------+----------+-------+---------------------+
8 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> CALL proc_Grade(9, 1300);
+--------+----------+-------+---------------------+
| RollNo | Sname    | Marks | Grade               |
+--------+----------+-------+---------------------+
|      1 |Rhutuja   |   995 | Distinction         |
|      2 |Vaishnavi |   828 | Higher Second Class |
|      3 |Bhagya    |   945 | First Class         |
|      4 |Rohini    |  1500 | Distinction         |
|      5 |Rohit     |   900 | First Class         |
|      6 |Sachin    |   850 | Higher Second Class |
|      7 |Sam       |   800 | NULL                |
|      8 |Aadya     |   899 | Higher Second Class |
|      9 |Mamta     |  1300 | Distinction         |
+--------+----------+-------+---------------------+
9 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> CALL proc_Grade(10, 920);
+--------+----------+-------+---------------------+
| RollNo | Sname    | Marks | Grade               |
+--------+----------+-------+---------------------+
|      1 |Rhutuja   |   995 | Distinction         |
|      2 |Vaishnavi |   828 | Higher Second Class |
|      3 |Bhagya    |   945 | First Class         |
|      4 |Rohini    |  1500 | Distinction         |
|      5 |Rohit     |   900 | First Class         |
|      6 |Sachin    |   850 | Higher Second Class |
|      7 |Sam       |   800 | NULL                |
|      8 |Aadya     |   899 | Higher Second Class |
|      9 |Mamta     |  1300 | Distinction         |
|     10 |Aditi     |   920 | First Class         |
+--------+----------+-------+---------------------+
10 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> CALL proc_Grade(11, 828);
+-----------------+
| EXCEPTION       |
+-----------------+
| ENTRY NOT FOUND |
+-----------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER $$
mysql> CREATE FUNCTION fun_Grade(
    ->  marks INT
    -> )
    ->  RETURNS VARCHAR(20)
    ->  DETERMINISTIC
    ->  BEGIN
    ->          DECLARE grade VARCHAR(20);
    ->                  IF marks >= 990 AND marks <= 1500 THEN
    ->                          SET grade = 'Distinction';
    ->
    ->                  ELSEIF marks >= 900 AND marks <= 989 THEN
    ->                          SET grade = 'First Class';
    ->
    ->                  ELSEIF marks >= 825 AND marks <= 899 THEN
    ->                          SET grade = 'Higher Second Class';
    ->
    ->                  ELSE
    ->                          SET grade = NULL;
    ->                  END IF;
    ->          RETURN (grade);
    ->  END$$
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> DELIMITER ;
mysql>
mysql> SELECT RollNo, Sname, Total_Marks, fun_Grade(Total_Marks) AS GRADE
    -> FROM Stud_marks ORDER BY RollNo;
+--------+----------+-------------+---------------------+
| RollNo | Sname    | Total_Marks | GRADE               |
+--------+----------+-------------+---------------------+
|      1 |Rhutuja   |         995 | Distinction         |
|      2 |Vaishnavi |         828 | Higher Second Class |
|      3 |Bhagya    |         945 | First Class         |
|      4 |Rohini    |        1500 | Distinction         |
|      5 |Rohit     |         900 | First Class         |
|      6 |Sachin    |         850 | Higher Second Class |
|      7 |Sam       |         800 | NULL                |
|      8 |Aadya     |         899 | Higher Second Class |
|      9 |Mamta     |        1300 | Distinction         |
|     10 |Aditi     |         920 | First Class         |
+--------+----------+-------------+---------------------+
10 rows in set (0.00 sec)

mysql>
mysql> CREATE TABLE Result2(
    ->  RollNo INT REFERENCES Stud_Marks(RollNo),
    ->     Sname VARCHAR(20),
    ->     Marks INT,
    ->     Grade VARCHAR(20)
    ->     );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER $$
mysql> CREATE PROCEDURE NewGrade_Proc()
    ->  BEGIN
    ->          DECLARE roll INT;
    ->         DECLARE m INT;
    ->          DECLARE student VARCHAR(20);
    ->          DECLARE exit_loop BOOLEAN;
    ->          DECLARE C1 CURSOR FOR SELECT * FROM Stud_Marks;
    ->          DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
    ->
    ->         OPEN C1;
    ->          L1: LOOP
    ->                  FETCH C1 INTO roll,student,m;
    ->
    ->                  IF exit_loop THEN
    ->                          CLOSE c1;
    ->                          LEAVE L1;
    ->                  END IF;
    ->
    ->                  IF m >= 990 AND m <= 1500 THEN
    ->                          INSERT INTO Result2
    ->                                  VALUES(roll, student, m, "Distinction");
    ->                  ELSEIF m >= 900 AND m <= 989 THEN
    ->                          INSERT INTO Result2
    ->                                  VALUES(roll, student, m, "First Class");
    ->                  ELSEIF m >= 825 AND m <= 899 THEN
    ->                          INSERT INTO Result2
    ->                                  VALUES(roll, student, m, "Higher Second Class");
    ->                  ELSE
    ->                          INSERT INTO Result2 VALUES(roll, student, m, NULL);
    ->                  END IF;
    ->
    ->          END LOOP L1;
    ->     END $$
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> delimiter ;
mysql> CALL NewGrade_Proc();
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> SELECT * FROM Result2;
+--------+----------+-------+---------------------+
| RollNo | Sname    | Marks | Grade               |
+--------+----------+-------+---------------------+
|      1 |Rhutuja   |   995 | Distinction         |
|      2 |Vaishnavi |   828 | Higher Second Class |
|      3 |Bhagya    |   945 | First Class         |
|      4 |Rohini    |  1500 | Distinction         |
|      5 |Rohit     |   900 | First Class         |
|      6 |Sachin    |   850 | Higher Second Class |
|      7 |Sam       |   800 | NULL                |
|      8 |Aadya     |   899 | Higher Second Class |
|      9 |Mamta     |  1300 | Distinction         |
|     10 |Aditi     |   920 | First Class         |
+--------+----------+-------+---------------------+
10 rows in set (0.00 sec)

mysql>
mysql> DROP TABLE Stud_Marks;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP FUNCTION fun_Grade;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP TABLE Result;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP PROCEDURE proc_Grade;
Query OK, 0 rows affected (0.00 sec)

mysql> DROP PROCEDURE NewGrade_Proc;
