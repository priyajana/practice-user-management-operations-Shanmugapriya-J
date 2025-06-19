/*Insert new user data*/

INSERT INTO users (username, firstName,
lastName, age) values ('jdoe', 'John', 'Doe', 30), ('asmith', 'Alice', 'Smith', 44);

/*Update existing records*/
UPDATE users set age=29 where firstName="John";


/*Delete specific rows*/

DELETE FROM users WHERE firstName ='Frank';

/*Write SELECT queries with conditions, sorting, and limits*/

select firstName,lastName,age from users order by age asc limit 8;
