BEGIN;

DROP TABLE IF EXISTS "Employees" CASCADE;

DROP TABLE IF EXISTS "Departments" CASCADE;

DROP TABLE IF EXISTS "Dept_manager" CASCADE;

DROP TABLE IF EXISTS "Titles" CASCADE;

DROP TABLE IF EXISTS "Dept_emp" CASCADE;

DROP TABLE IF EXISTS "Salaries" CASCADE;

CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(50)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" VARCHAR(50)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "id" SERIAL   NOT NULL,
    "dept_no" VARCHAR(50)  UNIQUE NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Dept_manager" (
    "id" SERIAL   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Titles" (
    "id" SERIAL   NOT NULL,
    "title_id" VARCHAR(50) UNIQUE  NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Dept_emp" (
    "id" SERIAL   NOT NULL,
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Salaries" (
    "id" SERIAL   NOT NULL,
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

END;