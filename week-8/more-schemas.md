![One-to-One](https://github.com/tnewcomb0/Phase-0/blob/master/week-8/imgs/One-To-One.png)

A one-to-one relationship is used to keep a table from getting too bloated. Sometimes there is a lot of information that a table needs to contain, so in order to keep the table from getting to big you can include some of that other data in a linked table. In my example, I linked customers and their addresses. Including all the information of an address in the first table would add quite a few extra lines. This type of relationship is rarely used.

![Many-to-Many](https://github.com/tnewcomb0/Phase-0/blob/master/week-8/imgs/Many-To-Many.png)


What is a one-to-one database?

A one-to-one database is when there is exactly one record in the first table that corresponds to exactly one record in the related table.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You would use it when the table being related contains something that the first table can only have one of. So something like a spouse or a passport is a time when you would use this.

What is a many-to-many database?

When one or more rows in a table are associated with one or more rows in another table.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

You would use it when you have a table that can relate to another table in multiple ways, in both directions. An example of a many-to-many relationship is a table of customers who can purchase many different products and a table of products that can be purchased by many different customers.

What is confusing about database schemas? What makes sense?

I don't really see many cases for using a one-to-one relationship where you couldn't just combine the 2 tables into one table. I do like how this handles data manipulation, it will help us handle large quantities of data.
