/* From date of birth of employee find its age using proxcedure and capitilize ename */
Delimiter $$
create procedure add_fe()
Begin 


update em set age=DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), DOB)), '%Y');
update em set ename=upper(ename);
end $$
Delimiter ;

/* output 

mysql> Delimiter ;
mysql> Delimiter $$
mysql> create procedure add_fe()
    -> Begin 
    -> 
    -> /*SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), DOB)), '%Y') + 0 AS age
   /*> FROM em;*/
    -> update em set age=DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), DOB)), '%Y');
    -> 
    -> end $$
Query OK, 0 rows affected (0.12 sec)

mysql> Delimiter ;
mysql> select * from em;
+---------+------+-------+------------+------+
| ename   | eno  | sal   | DOB        | age  |
+---------+------+-------+------------+------+
| Komal   |   20 | 70000 | 2003-06-23 |   19 |
| sayali  |   24 | 70000 | 2015-09-14 |    7 |
| Shravani|   32 | 70000 | 2015-09-14 |    7 |
+---------+------+-------+------------+------+
3 rows in set (0.00 sec)

mysql> select * from em;
+---------+------+-------+------------+------+
| ename   | eno  | sal   | DOB        | age  |
+---------+------+-------+------------+------+
| Komal   |   20 | 70000 | 2003-06-23 |   19 |
| Sayali  |   24 | 70000 | 2015-09-14 |    7 |
| Shravani|   32 | 70000 | 2015-09-14 |    7 |
+---------+------+-------+------------+------+
3 rows in set (0.00 sec)
 
 
mysql> Delimiter $$
mysql> create procedure add_f()
    -> Begin 
    -> 
    -> /*SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), DOB)), '%Y') + 0 AS age
   /*> FROM em;*/
    -> update em set age=DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), DOB)), '%Y');
    -> update em set ename=upper(ename);
    -> end $$
Query OK, 0 rows affected (0.14 sec)

mysql> Delimiter ;
mysql> select * from em;
+---------+------+-------+------------+------+
| ename   | eno  | sal   | DOB        | age  |
+---------+------+-------+------------+------+
| Komal   |   20 | 70000 | 2003-06-23 |   19 |
| Sayali  |   24 | 70000 | 2015-09-14 |    7 |
| Shravani|   32 | 70000 | 2015-09-14 |    7 |
+---------+------+-------+------------+------+
3 rows in set (0.00 sec)

mysql> call add_f();
Query OK, 0 rows affected (0.01 sec)

mysql> select * from em;
+---------+------+-------+------------+------+
| ename   | eno  | sal   | DOB        | age  |
+---------+------+-------+------------+------+
| Komal   |   20 | 70000 | 2003-06-23 |   19 |
| Sayali  |   24 | 70000 | 2015-09-14 |    7 |
| Shravani|   32 | 70000 | 2015-09-14 |    7 |
+---------+------+-------+------------+------+
3 rows in set (0.00 sec)

mysql> 

 
 */

