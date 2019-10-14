-- Create Two Tables
DROP Table Bestseller_Author;
CREATE TABLE Bestseller_Author (
book_id INT Primary Key,
publisher_id INT References Bestseller_Publisher(publisher_id),
author VARCHAR,
title VARCHAR,
bestseller_date timestamp without time zone,
weeks_on_bestseller_list INT,
primary_isbn10 INT,
PRIMARY KEY(book_id)
);

-- Select All from First Table
select * from bestseller_author

DROP Table Bestseller_Publisher;
CREATE TABLE Bestseller_Publisher (
   publisher_id INT PRIMARY KEY,
   publisher VARCHAR(300));

-- Select All from Second Table
select * from bestseller_publisher

SELECT Distinct bestseller_publisher.publisher, bestseller_author.title, 
bestseller_author.author FROM bestseller_publisher JOIN bestseller_author 
ON bestseller_publisher.publisher_id = bestseller_author.publisher_id
