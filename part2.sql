1. Find all the properties where the owner id is 2,3 or 4.

SELECT name
FROM properties
WHERE owner_id >= 2 AND owner_id <=4;

2. Find all the owners who do not have an age of 22,23 or 25

SELECT name
FROM owners
WHERE age != 22 OR age !=23 OR age !=25;

3. Find all the owners who name is equal to the string 'b' concatenated with the string 'ob'.

SELECT name, id
FROM owners
WHERE name = concat('b','ob');

4. Using a regular expression, find all owners whose name begins with a lower case j.

SELECT name
FROM owners
WHERE name LIKE 'j%';

5. Find all owners where the name starts with the letter 'b' (this search should be case insensitive and does not have to use a regular expression)

SELECT name
FROM owners
WHERE name LIKE 'b%' OR 'B%';
/**TO DO**/

6. Find the lowest age of all the owners. Give this search result a name of minimum_age

SELECT MIN(age) as minimum_age
FROM owners;

7. Find the highest age of all the owners. Give this search result a name of maximum_age

SELECT MAX(age) as maximum_age
FROM owners;

8. Find the sum of all of the ages of the owners, call this search result total

SELECT SUM(age) as total
FROM owners;

9. Find the average age of all the owners, call this search result average_age

SELECT AVG(age) as average_age
FROM owners;

10. Find the average age of all the owners rounded to two decimal places, call this search result average_age

SELECT ROUND(AVG(age)) as average_age
FROM owners;

11. Find the number of owners who have an age, call this search result total_age_given.

SELECT COUNT(*) as total_age_given
FROM owners
WHERE age IS NOT NULL;

12. Find the count of each age for the owners and order it by the age ascending. Your output should look like this:

 age | count
-----+-------
  33 |     3
  53 |     1
  73 |     1
     |     0
(4 rows)

****NEED TO DO****

SELECT COUNT(*)
FROM owners
WHERE age IS NOT NULL
ORDER BY COUNT(*) ASC;

13. Find the count of each age for the owners and order it by the age ascending only if the age is greater than zero . Your output should look like this:

 age | count
-----+-------
  33 |     3
  53 |     1
  73 |     1
(3 rows)
****NEED TO DO****

14. Create a prepared statement called addOwner that inserts an owner with a name and age.
*** Need to DO****
INSERT INTO owners (
  name,
  age
)
VALUES(? , ? );

**do I need to use bind statment here??
$stmt->bind_param("sss", $firstname, $lastname, $email); maybe use ? in id serial

15. Execute the addOwner statement with the values of 'test' and 25;

INSERT INTO owners (
  name,
  age
)
VALUES('test' , 25 );

16. Using the CASE operator, select the name and num_units from the properties table, and when the num_units is greater than 3000 a column called "status" should display 'huge'. If it is between 100 and 1000, "status" should display 'large'. If it is between 30 and 99 "status" should display 'medium'. If it is between 5 and 25 "status" should display 'small'. Otherwise "status" should display 'tiny'. Finally, order the results by the status and then the name - your output should look something like this

               name               | num_units | status
----------------------------------+-----------+--------
 briar patch                      |      3133 | huge
 island road                      |      1133 | huge
 1020 Sunset Blvd                 |       532 | large
 Figueroa Mt Road                 |       133 | large
 archstone                        |        33 | medium
 galvanize austin                 |        33 | medium
 galvanize denver platte          |        33 | medium
 galvanize san francisco          |        33 | medium
 galvanize seattle                |        33 | medium
 grand plaza                      |        33 | medium
 hotel california                 |        33 | medium
 lovely place                     |        33 | medium
 galvanize fort collins           |        13 | small
 galvanize boulder                |         4 | tiny
 galvanize denver golden triangle |         3 | tiny
(15 rows)

17. Select all of the names and ages for owners. If the owner does not have an age, use the COALESCE operator to give it a value of -1
****
SELECT owners.name* , owners.age*
FROM owners;
COALESCE(age === NULL)

18. Create a view that stores the SQL command from question 17 (the query involving CASE)
*****
CREATE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition

19. Using the EXPLAIN keyword, SELECT all information from the properties_size view
******

20. Rename your view to prop_size
*******

21. Delete the view called prop_size
*****

Bonus (this might require you to look up documentation online here and here

1. Find the number of properties for each owner as a column called number_of_properties and display their name. Your output should look like this:

   name   | number_of_properties
----------+----------------------
 jim      |                    9
 chrisine |                    2
 bob      |                    2
 tom      |                    2
(4 rows)
Using the rank() function, rank the number of units from highest to lowest: your output should look like

 num_units | rank
-----------+------
      3133 |    1
      1133 |    2
       532 |    3
       133 |    4
        33 |    5
        33 |    5
        33 |    5
        33 |    5
        33 |    5
        33 |    5
        33 |    5
        33 |    5
        13 |   13
         4 |   14
         3 |   15
(15 rows)
Find the most commonly occuring num_units in the properties table using the mode() function.

Write a function called calculate_sales_tax which takes in an integer and returns that value multiplied by 12%. Remember you will not be returning an INTEGER so make sure you return the correct type.

Write a function call calc_annual_tax which takes in an integer and returns the result of the previous calculate_sales_tax function multiplied by 12.
