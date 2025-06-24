START TRANSACTION;

-- drop statements
DROP TABLE IF EXISTS departments, courses, course_materials, resources;

-- create necessary tables
CREATE TABLE course_materials(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
textbook_name VARCHAR(80) NOT NULL,
study_guides VARCHAR(80) NOT NULL
);

CREATE TABLE resources(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book VARCHAR(50),
perodical VARCHAR(50),
dvd VARCHAR(50)
);

CREATE TABLE departments(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
dept_name VARCHAR(80) NOT NULL,
staff_size INT
);

CREATE TABLE courses(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50) NOT NULL,
credits INT NOT NULL,
course_materials_id INT NOT NULL REFERENCES course_materials(id),
resources_id INT REFERENCES resources(id),
dept_id INT REFERENCES departments(id)
);

ROLLBACK;