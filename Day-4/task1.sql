-- ==============================
-- TASK 1 : PART 1
-- ==============================

-- Table Creation
CREATE TABLE Department (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentId INT,
    Salary INT,
    Active INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id)
);

-- Insert Data
INSERT INTO Department VALUES
(1,'IT'),
(2,'Admin'),
(3,'HR'),
(4,'Accounts'),
(5,'Health');

INSERT INTO Employee VALUES
(1,'John',1,2000,1),
(2,'Sean',1,4000,1),
(3,'Eric',2,2000,1),
(4,'Nancy',2,2000,1),
(5,'Lee',3,3000,1),
(6,'Steven',4,2000,1),
(7,'Matt',1,5000,1),
(8,'Sarah',1,2000,0);

-- 1. Total salary expenditure for each department
SELECT d.Name AS Department, SUM(e.Salary) AS TotalSalary
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
GROUP BY d.Name;

-- 2. Average salary of employees in each department
SELECT d.Name AS Department, AVG(e.Salary) AS AvgSalary
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
GROUP BY d.Name;

-- 3. Employees in same department as 'John'
SELECT e2.*
FROM Employee e1
JOIN Employee e2 ON e1.DepartmentId = e2.DepartmentId
WHERE e1.Name = 'John';

-- 4. Employees not in 'IT' department (using join)
SELECT e.*
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
WHERE d.Name <> 'IT';

-- 5. Department with highest salary expenditure
SELECT d.Name, SUM(e.Salary) AS TotalSalary
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
GROUP BY d.Name
ORDER BY TotalSalary DESC
LIMIT 1;

-- 6. Employees having same salary as max salary in HR
SELECT *
FROM Employee
WHERE Salary = (
    SELECT MAX(e.Salary)
    FROM Employee e
    JOIN Department d ON e.DepartmentId = d.Id
    WHERE d.Name = 'HR'
);

-- 7. Employees and departments (No Department if null)
SELECT e.Name, COALESCE(d.Name, 'No Department') AS Department
FROM Employee e
LEFT JOIN Department d ON e.DepartmentId = d.Id;

-- 8. Departments with employees earning above average salary
SELECT DISTINCT d.Name
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
WHERE e.Salary > (SELECT AVG(Salary) FROM Employee);

-- 9. Departments with more than one employee having same salary
SELECT d.Name, e.Salary, COUNT(*) AS CountEmp
FROM Employee e
JOIN Department d ON e.DepartmentId = d.Id
GROUP BY d.Name, e.Salary
HAVING COUNT(*) > 1;
