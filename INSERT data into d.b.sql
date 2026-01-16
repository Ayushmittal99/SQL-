CREATE TABLE customer9 (
    old INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO customer9 VALUES (10,'aman'),(11,'shubam');

CREATE TABLE order9 (
    old INT PRIMARY KEY,
    city VARCHAR(20),
    cid INT,
    FOREIGN KEY (cid) REFERENCES customer9(old)
);
