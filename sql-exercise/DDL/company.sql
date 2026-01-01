Create database Company;

USE Company;

Create table department (Dname varchar(20),
Dno BIGINT Primary key ,
Mgr_ssn varchar(20),
Mgr_start_date DATE);   


CREATE TABLE employee (
        ssn CHAR(9) PRIMARY KEY,
        fname VARCHAR(30),
        minit CHAR(1),
        lname VARCHAR(30),
        bdate DATE,
        address VARCHAR(100),
        sex CHAR(1),
        salary DECIMAL(10,2),
        super_ssn CHAR(9),
        dno BIGINT,
    
        CONSTRAINT fk_supervisor
         FOREIGN KEY (super_ssn)
         REFERENCES employee(ssn),
  
        CONSTRAINT fk_department
        FOREIGN KEY (dno)
        REFERENCES department(Dno) );

ALTER TABLE department
ADD CONSTRAINT fk_manager
FOREIGN KEY (Mgr_ssn)
REFERENCES employee(ssn);

CREATE TABLE project (
    pnumber INT PRIMARY KEY,
    pname VARCHAR(50),
    plocation VARCHAR(50),
    dno BIGINT,

    CONSTRAINT fk_project_dept
        FOREIGN KEY (dno)
        REFERENCES department(Dno)
);

DROP TABLE IF EXISTS project;

CREATE TABLE works_on (
    essn CHAR(9),
    pno INT,
    hours DECIMAL(4,1),

    PRIMARY KEY (essn, pno),

    CONSTRAINT fk_work_emp
        FOREIGN KEY (essn)
        REFERENCES employee(ssn),

    CONSTRAINT fk_work_proj
        FOREIGN KEY (pno)
        REFERENCES project(pnumber)
);

CREATE TABLE dependent (
    essn CHAR(9),
    dependent_name VARCHAR(50),
    sex CHAR(1),
    bdate DATE,
    relationship VARCHAR(30),

    PRIMARY KEY (essn, dependent_name),

    CONSTRAINT fk_dependent_emp
        FOREIGN KEY (essn)
        REFERENCES employee(ssn)
);


mysql> SHOW TABLES;
+-------------------+
| Tables_in_company |
+-------------------+
| department        |
| dependent         |
| employee          |
| project           |
| works_on          |
+-------------------+
5 rows in set (0.11 sec)
