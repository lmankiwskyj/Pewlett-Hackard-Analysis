# Pewlett Hackard Analysis
## Module 7 Overview
As many current employees approach retirement age, it is important to determine how many positions by will be impacted by pending employee retirements. Nicknamed the “silver tsunami,” in order to prepare for a potential staffing shortage, employees have been identified by job title and department.  There is also a proposal for a new mentorship program to train new staff. 

## Results
 By joining several tables together (see figure below) from Human Resources and some help from SQL , a list of current employees that are eligible for retirement has been created.
 
![DBD](https://user-images.githubusercontent.com/90974647/140649850-bf600493-1f98-430d-899d-5d1ece0358ae.PNG)


The table below shows the number of retiring employees by title:

![retiring_titles_unique](https://user-images.githubusercontent.com/90974647/140621317-5c360493-326a-4429-8d4f-36e2ac55d9c8.PNG)

***These are some staggering numbers!***

 * There will soon be over 40% of current employees eligible to retire.
 * Most impacted number of job titles needed for new staff development are Senior Engineer and Senior Staff.
 * A list of current employees that are eligible to participate in new mentorship program has been created.
 * While a mentorship program will help, there are only a small percentage of current employees eligible, when compared with the number of staff retiring. 

## Summary
As the silver tsunami begins to make an impact, there will be 90,398 positions needing to be filled.  There are not currently enough qualified, retirement-ready employees in the departments needed to mentor the next generation of Pewlett Hackard employees.  

By creating another table in SQL grouping the mentors by job title and joining that to the existing table showing the retiring employees by title:

![comp](https://user-images.githubusercontent.com/90974647/140653330-6a36c9b4-e70d-4212-9ce8-3bf933a71087.PNG) 

you can clearly see there are gaps that will need further action to prevent Pewlett Hackard from being devastated by the silver tsunami.


