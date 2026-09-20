/*LIBRARY MANAGEMENT SYSTEM (LMS)*/

CREATE DATABASE lms;
USE lms;

/*1. MEMBERS DETAILS*/
CREATE TABLE members_details (
    MEMBER_ID VARCHAR(20) PRIMARY KEY,
    MEMBER_NAME VARCHAR(20),
    CITY VARCHAR(20),
    DATE_REGISTER DATE,
    DATE_EXPIRE DATE,
    MEMBERSHIP_STATUS VARCHAR(20)
);

/*2. SUPPLIER DETAILS*/
CREATE TABLE supplier_details (
    SUPPLIER_ID VARCHAR(20) PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(20),
    ADDRESS VARCHAR(20),
    CONTACT INT,
    EMAIL VARCHAR(20)
);

/*3. FINE DETAILS*/
CREATE TABLE fine_details (
    FINE_RANGE VARCHAR(20) PRIMARY KEY,
    FINE_AMT INT
);

/*4. BOOK DETAILS*/
CREATE TABLE book_details (
    BOOK_CODE VARCHAR(20) PRIMARY KEY,
    BOOK_TITLE VARCHAR(30),
    CATEGORY VARCHAR(30),
    AUTHOR VARCHAR(20),
    PUBLICATION VARCHAR(20),
    PUBLISH_DATE DATE,
    BOOK_EDITION INT,
    PRICE INT,
    RAK_NUM VARCHAR(20),
    DATE_ARRIVAL DATE,
    SUPPLIER_ID VARCHAR(20),

    FOREIGN KEY (SUPPLIER_ID)
    REFERENCES supplier_details(SUPPLIER_ID)
);

/*5. BOOK ISSUE*/
CREATE TABLE book_issue (
    BOOK_ISSUE_NO INT PRIMARY KEY,
    MEMBER_ID VARCHAR(20),
    BOOK_CODE VARCHAR(20),
    DATE_ISSUE DATE,
    DATE_RETURN DATE,
    DATE_RETURNED DATE,
    BOOK_ISSUE_STATUS VARCHAR(20),
    FINE_RANGE VARCHAR(20),

    FOREIGN KEY (MEMBER_ID)
    REFERENCES members_details(MEMBER_ID),

    FOREIGN KEY (BOOK_CODE)
    REFERENCES book_details(BOOK_CODE),

    FOREIGN KEY (FINE_RANGE)
    REFERENCES fine_details(FINE_RANGE)
);

SHOW TABLES;

/*6. INSERT MEMBERS*/
INSERT INTO members_details
(MEMBER_ID, MEMBER_NAME, CITY, DATE_REGISTER, DATE_EXPIRE, MEMBERSHIP_STATUS)
VALUES

('LM001','Ravi Kishore','Vijayawada','2012-01-10','2013-01-10','Permanent'),
('LM002','Priyaka Sharma','Hyderabad','2012-01-15','2013-01-15','Permanent'),
('LM003','Arjun Reddy','Bengaluru','2012-02-05','2013-02-05','Temporary'),
('LM004','Sneha Rami','Chennai','2012-02-20','2013-02-20','Permanent'),
('LM005','Kiran','Vizag','2012-03-01','2013-03-01','Temporary'),
('LM006','Anjali Das','Delhi','2012-03-10','2013-03-10','Permanent'),
('LM007','Rahul Verma','Mumbai','2012-03-15','2013-03-15','Temporary'),
('LM008','Navya Singh','Pune','2012-04-01','2013-04-01','Permanent'),
('LM009','Vikram Rathod','Kolkata','2012-04-10','2013-04-10','Temporary'),
('LM010','Pooja Roy','Vijayawada','2012-05-05','2013-05-05','Permanent'),
('LM011','Suresh Babu','Hyderabad','2012-05-15','2013-05-15','Temporary'),
('LM012','Meenu Devi','Chennai','2012-06-01','2013-06-01','Permanent'),
('LM013','Akhil Rao','Bengaluru','2012-06-10','2013-06-10','Temporary'),
('LM014','Divya Somitha','Vizag','2012-07-01','2013-07-01','Permanent'),
('LM015','Manav Kumar','Delhi','2012-07-15','2013-07-15','Temporary'),
('LM016','Swathi Rami','Mumbai','2012-08-01','2013-08-01','Permanent'),
('LM017','Naveen kumar','Pune','2012-08-15','2013-08-15','Temporary'),
('LM018','Lakshmi Prasana','Kolkata','2012-09-01','2013-09-01','Permanent'),
('LM019','varun Kumar','Vijayawada','2012-09-15','2013-09-25','Temporary'),
('LM020','pavani','Hyderabad','2012-10-01','2013-10-03','Permanent');

/*7. INSERT SUPPLIERS*/
INSERT INTO supplier_details
(SUPPLIER_ID, SUPPLIER_NAME, ADDRESS, CONTACT, EMAIL)
VALUES

('SP001','Prentice Hall','New Delhi',900000001,'ph@books.com'),
('SP002','Pearson','Mumbai',900000002,'pe@books.com'),
('SP003','McGraw Hill','Delhi',900000003,'mh@books.com'),
('SP004','Oxford Press','Chennai',900000004,'ox@books.com'),
('SP005','Wiley','Hyderabad',900000005,'wy@books.com'),
('SP006','OReilly','Bengaluru',900000006,'or@books.com'),
('SP007','S Chand','Delhi',900000007,'sc@books.com'),
('SP008','TMH','Mumbai',900000008,'tmh@books.com'),
('SP009','BPB Publications','Pune',900000009,'bpb@books.com'),
('SP010','Cambridge','Kolkata',900000010,'cb@books.com'),
('SP011','Springer','Delhi',900000011,'sp@books.com'),
('SP012','Elsevier','Chennai',900000012,'el@books.com'),
('SP013','Cengage','Hyderabad',900000013,'ce@books.com'),
('SP014','Packt','Bengaluru',900000014,'pk@books.com'),
('SP015','Pearson India','Mumbai',900000015,'pi@books.com'),
('SP016','Jaico','Pune',900000016,'jc@books.com'),
('SP017','Dreamtech','Delhi',900000017,'dt@books.com'),
('SP018','Khanna','Chennai',900000018,'kh@books.com'),
('SP019','Techmax','Hyderabad',900000019,'tx@books.com'),
('SP020','Galgotia','Noida',900000020,'ga@books.com');

/*8. INSERT FINE DETAILS*/
INSERT INTO fine_details
(FINE_RANGE, FINE_AMT)
VALUES 

('F01',10),
('F02',20),
('F03',30),
('F04',40),
('F05',50),
('F06',60),
('F07',70),
('F08',80),
('F09',90),
('F10',100),
('F11',110),
('F12',120),
('F13',130),
('F14',140),
('F15',150),
('F16',160),
('F17',170),
('F18',180),
('F19',190),
('F20',200);

/*9. INSERT BOOK DETAILS*/
INSERT INTO book_details
(
    BOOK_CODE,
    BOOK_TITLE,
    CATEGORY,
    AUTHOR,
    PUBLICATION,
    PUBLISH_DATE,
    BOOK_EDITION,
    PRICE,
    RAK_NUM,
    DATE_ARRIVAL,
    SUPPLIER_ID
)
VALUES

('BL000001','Java Programming','Java','James Gosling','Prentice Hall',
'2010-01-10',1,550,'R01','2011-01-05','SP001'),

('BL000002','Python Basics','Python','Paul Barry','Pearson',
'2011-02-15',2,450,'R02','2011-03-10','SP002'),

('BL000003','Core Java','Java','Herbert Schildt','McGraw Hill',
'2010-03-20',5,650,'R03','2011-04-01','SP003'),

('BL000004','Database Systems','Database','Raghu Ramakrishnan','Pearson',
'2009-04-12',3,700,'R04','2011-05-10','SP002'),

('BL000005','Java Complete Reference','Java','Herbert Schildt','Prentice Hall',
'2010-05-18',7,750,'R05','2011-06-05','SP001'),

('BL000006','Machine Learning','AI','Peter Harrington','OReilly',
'2011-06-20',1,800,'R06','2011-07-15','SP006'),

('BL000007','C Programming','Programming','Pradeep Dey','S Chand',
'2009-07-15',4,400,'R07','2011-08-01','SP007'),

('BL000008','Web Technologies','Web','P. S. Bimbhra','TMH',
'2010-08-10',2,500,'R08','2011-09-10','SP008'),

('BL000009','Data Structures','Programming','Seymour Lipschutz','McGraw Hill',
'2010-09-25',6,600,'R09','2011-10-01','SP003'),

('BL000010','Artificial Intelligence','AI','Patrick Winston','Pearson',
'2011-10-05',3,850,'R10','2011-11-15','SP002'),

('BL000011','SQL Fundamentals','Database','John Patrick','Prentice Hall',
'2010-11-10',2,480,'R11','2011-12-01','SP001'),

('BL000012','Computer Networks','Networking','Andrew Tanenbaum','Pearson',
'2009-12-15',5,720,'R12','2012-01-10','SP002'),

('BL000013','Operating Systems','OS','Abraham Silberschatz','Wiley',
'2010-01-20',8,900,'R13','2012-02-01','SP005'),

('BL000014','Deep Learning','AI','Ian Goodfellow','MIT Press',
'2011-02-10',1,950,'R14','2012-02-20','SP011'),

('BL000015','Java Enterprise','Java','Paul Deitel','Prentice Hall',
'2011-03-15',4,780,'R15','2012-03-01','SP001'),

('BL000016','Python Machine Learning','Python','Sebastian Raschka','Packt',
'2011-04-20',2,820,'R16','2012-03-15','SP014'),

('BL000017','Cloud Computing','Cloud','Rajkumar Buyya','Wiley',
'2010-05-12',3,760,'R17','2012-04-01','SP005'),

('BL000018','Computer Graphics','Graphics','Donald Hearn','Pearson',
'2009-06-18',4,680,'R18','2012-04-10','SP002'),

('BL000019','Software Engineering','Software','Ian Sommerville','Pearson',
'2010-07-20',9,880,'R19','2012-05-01','SP002'),

('BL000020','Programming in C','Programming','Pradeep K. Sinha','Prentice Hall',
'2011-08-25',5,520,'R20','2012-05-15','SP001');

/*10. INSERT BOOK ISSUE DETAILS*/
INSERT INTO book_issue
(
    BOOK_ISSUE_NO,
    MEMBER_ID,
    BOOK_CODE,
    DATE_ISSUE,
    DATE_RETURN,
    DATE_RETURNED,
    BOOK_ISSUE_STATUS,
    FINE_RANGE
)
VALUES

(1,'LM001','BL000001','2012-03-20','2012-04-01','2012-04-01','Y','F01'),
(2,'LM002','BL000002','2012-03-25','2012-04-10',NULL,'N','F02'),
(3,'LM003','BL000003','2012-04-01','2012-04-15','2012-04-15','Y','F01'),
(4,'LM004','BL000004','2012-04-01','2012-04-20',NULL,'N','F03'),
(5,'LM005','BL000005','2012-04-05','2012-04-19','2012-04-18','Y','F02'),
(6,'LM006','BL000006','2012-04-10','2012-04-24',NULL,'N','F04'),
(7,'LM007','BL000007','2012-04-15','2012-04-29','2012-04-29','Y','F01'),
(8,'LM008','BL000008','2012-04-20','2012-05-04',NULL,'N','F05'),
(9,'LM009','BL000009','2012-05-01','2012-05-15','2012-05-15','Y','F02'),
(10,'LM010','BL000010','2012-05-05','2012-05-19',NULL,'N','F03'),
(11,'LM011','BL000011','2012-05-10','2012-05-24','2012-05-24','Y','F01'),
(12,'LM012','BL000012','2012-05-15','2012-05-29',NULL,'N','F04'),
(13,'LM013','BL000013','2012-06-01','2012-06-15','2012-06-15','Y','F02'),
(14,'LM014','BL000014','2012-06-05','2012-06-19',NULL,'N','F05'),
(15,'LM015','BL000015','2012-06-10','2012-06-24','2012-06-23','Y','F01'),
(16,'LM016','BL000016','2012-06-15','2012-06-29',NULL,'N','F03'),
(17,'LM017','BL000017','2012-07-01','2012-07-15','2012-07-15','Y','F02'),
(18,'LM018','BL000018','2012-07-05','2012-07-19',NULL,'N','F04'),
(19,'LM019','BL000019','2012-08-01','2012-08-15','2012-08-15','Y','F01'),
(20,'LM020','BL000020','2012-08-05','2012-08-19',NULL,'N','F05');

SELECT * FROM members_details;

SELECT * FROM book_details;

SELECT * FROM fine_details;

SELECT * FROM supplier_details;

SELECT * FROM book_issue;

/*QUERY 1
-- PERMANENT MEMBERS*/
SELECT
    MEMBER_ID,
    MEMBER_NAME,
    CITY,
    MEMBERSHIP_STATUS
FROM members_details
WHERE MEMBERSHIP_STATUS = 'Permanent';

/*QUERY 2
-- MEMBERS WHO HAVE NOT RETURNED BOOK*/
SELECT
    m.MEMBER_ID,
    m.MEMBER_NAME
FROM members_details m
JOIN book_issue b
    ON m.MEMBER_ID = b.MEMBER_ID
WHERE b.BOOK_ISSUE_STATUS = 'N';

/*QUERY 3
-- MEMBER WHO ISSUED BOOK BL000002*/
SELECT
    m.MEMBER_ID,
    m.MEMBER_NAME
FROM members_details m
JOIN book_issue b
    ON m.MEMBER_ID = b.MEMBER_ID
WHERE b.BOOK_CODE = 'BL000002';

/*QUERY 4
-- AUTHORS STARTING WITH P*/
SELECT
    BOOK_CODE,
    BOOK_TITLE,
    AUTHOR
FROM book_details
WHERE AUTHOR LIKE 'P%';

/*QUERY 5
-- NUMBER OF JAVA BOOKS*/
SELECT COUNT(*) AS no_of_books
FROM book_details
WHERE CATEGORY = 'Java';

 /*QUERY 6
-- NUMBER OF BOOKS BY CATEGORY*/
SELECT
    CATEGORY,
    COUNT(*) AS no_of_books
FROM book_details
GROUP BY CATEGORY;

 /*QUERY 7
-- BOOKS FROM PRENTICE HALL*/
SELECT COUNT(*) AS no_of_books
FROM book_details
WHERE PUBLICATION = 'Prentice Hall';

/*QUERY 8
-- BOOKS ISSUED ON 2012-04-01*/
SELECT
    BOOK_CODE,
    BOOK_TITLE
FROM book_details
WHERE BOOK_CODE IN
(
    SELECT BOOK_CODE
    FROM book_issue
    WHERE DATE_ISSUE = '2012-04-01'
);

/*QUERY 9
-- TEMPORARY MEMBERS REGISTERED BEFORE
-- 2012-03-01*/
SELECT
    MEMBER_ID,
    MEMBER_NAME,
    DATE_REGISTER,
    MEMBERSHIP_STATUS
FROM members_details
WHERE DATE_REGISTER < '2012-03-01'
AND MEMBERSHIP_STATUS = 'Temporary';

/*QUERY 10
-- EXPIRED MEMBERS*/
SELECT
    MEMBER_ID,
    MEMBER_NAME,
    DATE_REGISTER,
    DATE_EXPIRE
FROM members_details
WHERE DATE_EXPIRE < '2013-04-01';
