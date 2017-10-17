USE test;

DROP TABLE IF EXISTS test.book;
CREATE TABLE test.book (
  id          INT(11)      NOT NULL AUTO_INCREMENT,
  title       VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  author      VARCHAR(100) NOT NULL,
  isbn        VARCHAR(20)  NOT NULL,
  printYear   INT(11)      NOT NULL,
  readAlready TINYINT(4)   NOT NULL,
  PRIMARY KEY (id)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

INSERT INTO test.book (title, description, author, isbn, printYear, readAlready)
VALUES
  ('Kolobok', 'fairy tales for adults', 'folk tales', '000-0-0000-0000-1', 1000, TRUE),
  ('Kolobok', 'fairy tales for child', 'folk tales', '000-0-0000-0000-2', 1000, TRUE),
  ('Aerodynamics', 'classbook', 'Kalugin', '978-5-7038-428-1', 2017, FALSE),
  ('Java Philosophy', 'classbook', 'Bruce Eckel', '978-5-496-01127-3', 2015, FALSE),
  ('Philosophy of Java. The programmers library', 'classbook', 'Bruce Eckel', '978-5-4461-0107-8', 2014, TRUE),
  ('Philosophy of Java. Library of the programmer 3rd ed.', 'classbook', 'Bruce Eckel', '5-88782-105-1', 2003, FALSE),
  ('Pro JavaScript Techniques', 'classbook', 'Resig John', '978-5-8459-2054-6', 2016, FALSE),
  ('Secrets of the JavaScript Ninja', 'classbook', 'Resig John', '978-5-9908911-8-0', 2017, FALSE),
  ('Secrets of the JavaScript Ninja', 'classbook', 'Resig John', '978-5-8459-1959-5', 2016, FALSE),
  ('C++: The Complete Reference', 'classbook', 'Shildt Herbert', '978-5-8459-2047-8', 2016, FALSE),
  ('Java 8. The Complete Reference', 'classbook', 'Shildt Herbert', '978-5-8459-1918-2', 2015, TRUE),
  ('Java. A Beginners Guide', 'classbook', 'Shildt Herbert', '978-5-8459-1955-7', 2015, FALSE),
  ('The Lord of the Rings. Part I. The Fellowship of the Ring', 'imaginative literature', 'Tolkien John Ronald Ruel', '978-5-17-103035-3', 2017, FALSE),
  ('The Lord of the Rings. Part II. The Two Towers', 'imaginative literature', 'Tolkien John Ronald Ruel', '978-5-17-102559-5', 2017, FALSE),
  ('The Lord of the Rings. Part 3. The Return of the King', 'imaginative literature', 'Tolkien John Ronald Ruel', '978-5-17-103045-2', 2017, FALSE),
  ('The Silmarillion', 'imaginative literature', 'Tolkien John Ronald Ruel', '978-5-17-088588-6', 2015, FALSE),
  ('The Hobbit or There and Back Again', 'imaginative literature', 'Tolkien John Ronald Ruel', '978-5-17-083891-2', 2014, FALSE),
  ('The Chronicles of Amber (Omnibus)', 'imaginative literature', 'Zelazny Roger', '978-5-699-06778-7', 2017, FALSE),
  ('Some book', 'book', 'someone', '000-0-0000-0000-3', 2010, TRUE),
  ('Some book', 'journal', 'someone', '000-0-0000-0000-4', 2010, TRUE),
  ('Some book', 'manual', 'someone', '000-0-0000-0000-5', 2010, TRUE),
  ('Some book', 'classbook', 'someone', '000-0-0000-0000-6', 2010, TRUE),
  ('Some book', 'something', 'someone', '000-0-0000-0000-7', 2010, TRUE)
