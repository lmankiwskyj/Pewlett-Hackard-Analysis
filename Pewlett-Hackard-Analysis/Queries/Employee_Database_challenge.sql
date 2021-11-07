-- create a Retirement Titles table 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE ti.to_date = ('9999-01-01') AND
(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY "emp_no";

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles;

-- number of employees by their most recent job title who are about to retire
SELECT COUNT(title) "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

SELECT * FROM retiring_titles;

-- create a Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01') AND
(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty;

-- number of employees by title and mentorship eligibility
--DROP TABLE retiring_titles_mentorship_eligibilty
SELECT COUNT(title) "count", title
INTO retiring_titles_mentorship_eligibilty
FROM mentorship_eligibilty
GROUP BY title
ORDER BY "count" DESC;

SELECT * FROM retiring_titles_mentorship_eligibilty;

-- create a Mentorship Eligibility comparison table with retiring emp
SELECT ut.title,
	ut.count "Count of Retiring Employees",
	rtme.count "Count of Mentors"
INTO retiring_titles_mentor_compare
FROM unique_titles as ut
LEFT JOIN retiring_titles_mentorship_eligibilty as rtme
ON (ut.title = rtme.title)
GROUP BY ut.title, rtme.title, rtme.count
ORDER BY ut.count DESC;

SELECT * FROM retiring_titles_mentor_compare;

SELECT SUM (count)
FROM retiring_titles;