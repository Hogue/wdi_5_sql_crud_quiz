DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- Question 1. Create two tables:
--   `houses` has the following columns: id (serial primary key), name (text), motto (text), and sigil (text)
--   `people` has an id ( serial primary key), name (text), title (text), quote (text), image (text) and age (integer)

CREATE TABLE houses (id serial primary key, name text, motto text, sigil text);

\script i/houses/quiz.sql;


CREATE TABLE people (id serial primary key, name text, title text, quote text, image text, age integer);
\script i/people/quiz.sql;

-- Question 2. Insert the data from `westeros/houses.csv` into the `houses` table and the data from `westeros/people.csv` into the `people` table.

INSERT INTO houses (name,motto,sigil) VALUES ('House Baratheon', 'Ours is the fury.', 'http://i.imgur.com/iJtBKIR.png');
INSERT INTO houses (name,motto,sigil) VALUES ('House Bolton', 'Our blades are sharp.', 'http://i.imgur.com/uPoc9Jh.jpg');
INSERT INTO houses (name,motto,sigil) VALUES ('House Lannister', 'Hear me roar!', 'http://i.imgur.com/gOwmzoU.jpg');
INSERT INTO houses (name,motto,sigil) VALUES ('House Martell','Unbowed, Unbent, Unbroken.','http://i.imgur.com/XaIiVNI.jpg');
INSERT INTO houses (name,motto,sigil) VALUES ('House Stark', 'Winter is coming.', 'http://i.imgur.com/zpVjXsa.jpg');
INSERT INTO houses (name,motto,sigil) VALUES ('House Targaryen', 'Blood and fire.', 'http://i.imgur.com/4FuSpZt.jpg');
\script i//quiz.sql;




INSERT INTO people (name,title,quote,image,age) VALUES ('Daenerys Targaryen', 'Queen of Meereen and Mother of Dragons', 'I will take what is mine with blood and fire.', 'http://i.imgur.com/DjHJq4E.jpg',18);
INSERT INTO people (name,title,quote,image,age) VALUES ('Jon Snow','Lord Commander of the Night's Watch','Night gathers, and now my watch begins.','http://i.imgur.com/WadV6VI.jpg', 19);
INSERT INTO people (name,title,quote,image,age) VALUES ('Tyrion Lannister', 'Hand of the King and Master of Coin', 'A Lannister always pays his debts.', 'http://i.imgur.com/rNHNWca.jpg', 35);
INSERT INTO people (name,title,quote,image,age) VALUES ('Tywin Lannister', 'Wormchow','You cannot eat love, nor buy a horse with it, nor warm your halls on a cold night.','http://i.imgur.com/ovtHd1H.jpg', 60);
INSERT INTO people (name,title,quote,image,age) VALUES ('Arya Stark','Princess of Winterfell', '...anyone can be killed.', 'http://i.imgur.com/Csq9exg.jpg', 14);
INSERT INTO people (name,title,quote,image,age) VALUES ('Cersei Lannister', 'King Mother and Lady of Casterly Rock','The gods have no mercy, that’s why they’re gods.', 'http://i.imgur.com/jYeeCJ3.jpg',40);
\script i//quiz.sql;



-- Question 3. Write a query to get all attributes of people greater than a certain age *or* having a specific title.

SELECT *
FROM people
WHERE dob
BETWEEN '30'
AND '65'
ORDER BY name;


-- your code ends here

-- Question 4. Change the motto of one of your houses. Look it up by its name.

UPDATE houses
SET name = 'Bitch'
WHERE id = 3;


-- your code ends here

-- Question 5. Kill off, er, I mean delete one of the people. Look them up by their title.

delete from people where title = 'King Mother and Lady of Casterly Rock';

-- your code ends here
