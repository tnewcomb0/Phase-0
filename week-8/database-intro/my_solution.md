1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6. SELECT state_name, population_density FROM states where population_density >50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. SELECT region_name, state_name FROM states JOIN regions ON states.region_id=regions.id ORDER BY region_id;

![Tables](https://github.com/tnewcomb0/Phase-0/blob/master/week-8/database-intro/Schema_for_8.4.png)

What are databases for?

Databases are one of the best way to store and access lagre quantities of data. They also can help parse through it in many different ways.

What is a one-to-many relationship?

It just means that one thing is related to many things. So, in relating a parent record (the one) to a child record (the many), the parent record can refer to any number of child records, but the child records can only refer to the one parent record.

What is a primary key? What is a foreign key? How can you determine which is which?

The primary key is the peice of information that is a unique identifier that the foreign key references. They are in seperate tables. The foreign key must have a matching primary key.

How can you select information out of a SQL database? What are some general guidelines for that?

You use the SELECT * FROM tablename keywords. I'm not quite sure what is meant by guidelines for that. I guess it could mean that the words don't have to be all in caps, but it helps for readability. Also, there are many other keywords that can help shape the data you are recieving.