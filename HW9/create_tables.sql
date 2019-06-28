--Create all tables

-- Create Departments table
CREATE TABLE Departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

-- Create Department Employees table
CREATE TABLE Department_Employees (
  emp_no VARCHAR(10) NOT NULL,
  dept_no VARCHAR(10) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

-- Create Department Managers table
CREATE TABLE Department_Managers (
  dept_no VARCHAR(10) NOT NULL,
  emp_no VARCHAR(10) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
  emp_no VARCHAR(10) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender VARCHAR(10),
  hire_date DATE NOT NULL
);

-- Create Salaries table
CREATE TABLE Salaries (
  emp_no VARCHAR(10) NOT NULL,
  salary MONEY,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

-- Create Titles table
CREATE TABLE Titles (
  emp_no VARCHAR(10) NOT NULL,
  title VARCHAR(30),
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);
