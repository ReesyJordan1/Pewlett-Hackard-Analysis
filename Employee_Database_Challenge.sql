--Deliverable 1:
-- create retirement_titles which contains retiring employees
SELECT  e.emp_no,
				e.first_name,
				e.last_name,
				t.title,
				t.from_date,
				t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * From retirement_titles

-- create unique_titles table which contains the retiring employees and their most recent titles
SELECT DISTINCT ON (r.emp_no)
	r.emp_no,
	r.first_name,
	r.last_name,
	r.title
INTO unique_titles
FROM retirement_titles as r
ORDER BY emp_no, to_date DESC;

SELECT * From unique_titles

-- create retiring_titles table which contains number of retiring employees by title
SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY count DESC;

SELECT * From retiring_titles

---------------------------------------------------------
--Deliverable 2:
--The Employees Eligible for the Mentorship Program.
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as d -- get the department
ON (e.emp_no = d.emp_no)
INNER JOIN titles as t -- get the title
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') -- condition for mentorship_eligibility
AND (d.to_date = '9999-01-01') -- make sure of current employee
ORDER BY e.emp_no;

SELECT * From mentorship_eligibility
