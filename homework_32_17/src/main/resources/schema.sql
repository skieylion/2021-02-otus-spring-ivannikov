DROP TABLE IF EXISTS GENRE;
CREATE TABLE GENRE(
    ID BIGINT PRIMARY KEY auto_increment,
    NAME VARCHAR(127) NOT NULL
);

DROP TABLE IF EXISTS AUTHOR;
CREATE TABLE AUTHOR(
    ID BIGINT PRIMARY KEY auto_increment,
    FULLNAME VARCHAR(511) NOT NULL,
    ALIAS VARCHAR(127)
);

DROP TABLE IF EXISTS BOOK;
CREATE TABLE BOOK(
    ID BIGINT PRIMARY KEY auto_increment,
    NAME VARCHAR(255) NOT NULL,
    AUTHOR_ID BIGINT NULL,
    GENRE_ID BIGINT NULL
);

DROP TABLE IF EXISTS COMMENT;
CREATE TABLE COMMENT(
    ID BIGINT PRIMARY KEY auto_increment,
    DESCRIPTION VARCHAR(8191),
    BOOK_ID BIGINT NULL
);

ALTER TABLE BOOK ADD FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(ID);
ALTER TABLE BOOK ADD FOREIGN KEY (GENRE_ID) REFERENCES GENRE(ID);
ALTER TABLE COMMENT ADD FOREIGN KEY (BOOK_ID) REFERENCES BOOK(ID);
