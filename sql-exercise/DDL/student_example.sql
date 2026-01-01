Create database student_db;

Use student_db;

CREATE TABLE department (
    dname VARCHAR(50) PRIMARY KEY,
    code VARCHAR(10),
    college VARCHAR(50),
    officeno VARCHAR(10),
    officephone VARCHAR(15)
);

CREATE TABLE grade_report (
    lettergrade CHAR(2) PRIMARY KEY,
    numericgrade INT
);

CREATE TABLE student (
    sid INT PRIMARY KEY,
    fn VARCHAR(30),
    ln VARCHAR(30),
    bdate DATE,
    sex CHAR(1),
    class VARCHAR(20),
    degree_program VARCHAR(50),
    c_address VARCHAR(100),
    c_phone VARCHAR(15),
    p_phone VARCHAR(15),
    city VARCHAR(30),
    state VARCHAR(30),
    zip VARCHAR(10),
    major_dep VARCHAR(50),
    minor_dep VARCHAR(50),

    CONSTRAINT fk_major
        FOREIGN KEY (major_dep)
        REFERENCES department(dname),

    CONSTRAINT fk_minor
        FOREIGN KEY (minor_dep)
        REFERENCES department(dname)
);
CREATE TABLE course (
    cnumber INT PRIMARY KEY,
    cname VARCHAR(50),
    description VARCHAR(100),
    hours INT,
    level VARCHAR(20),
    dep VARCHAR(50),

    CONSTRAINT fk_course_dep
        FOREIGN KEY (dep)
        REFERENCES department(dname)
);

CREATE TABLE section (
    secnum INT,
    year INT,
    semester VARCHAR(10),
    instructor VARCHAR(50),
    course INT,

    PRIMARY KEY (secnum, year, semester),

    CONSTRAINT fk_section_course
        FOREIGN KEY (course)
        REFERENCES course(cnumber)
);

CREATE TABLE student_grades (
    student INT,
    courseno INT,
    secnum INT,
    semester VARCHAR(10),
    year INT,
    grade CHAR(2),

    PRIMARY KEY (student, courseno, secnum, semester, year),

    CONSTRAINT fk_sg_student
        FOREIGN KEY (student)
        REFERENCES student(sid),

    CONSTRAINT fk_sg_course
        FOREIGN KEY (courseno)
        REFERENCES course(cnumber),

    CONSTRAINT fk_sg_grade
        FOREIGN KEY (grade)
        REFERENCES grade_report(lettergrade)
);


mysql> show tables;
+----------------------+
| Tables_in_student_db |
+----------------------+
| course               |
| department           |
| grade_report         |
| section              |
| student              |
| student_grades       |
+----------------------+
6 rows in set (0.07 sec)