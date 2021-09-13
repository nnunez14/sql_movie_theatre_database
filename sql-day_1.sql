CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	ticket_number INTEGER,
	movie_number INTEGER,
	FOREIGN KEY (ticket_number) REFERENCES tickets(ticket_number),
	FOREIGN KEY (movie_number) REFERENCES movie(movie_number)
);

INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	ticket_number,
	movie_number
)VALUES(
	4,
	'Tom',
	'Hanks',
	4,
	4
);

CREATE TABLE concessions(
	concessions_number SERIAL,
	customer_id INTEGER,
	food VARCHAR(100),
	PRIMARY KEY (concessions_number),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO concessions(
	concessions_number,
	customer_id,
	food
)VALUES(
	4,
	4,
	'soda',
);


CREATE TABLE tickets(
  ticket_number SERIAL,
  price NUMERIC(4,2),
  PRIMARY KEY (ticket_number)
);

INSERT INTO tickets(
	ticket_number,
	price
)VALUES(
	4,
	15.00
);


CREATE TABLE movie(
  movie_number SERIAL,
  movie_name VARCHAR(100),
  movie_genre VARCHAR(100),
  PRIMARY KEY (movie_number)
);


INSERT INTO movie(
	movie_number,
	movie_name,
	movie_genre
)VALUES(
	4,
	'Forest_Gump',
	'Drama'
);

select * From concessions

select * From customers

select * From movie

select * From tickets