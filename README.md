# Pewlett-Hackard-Analysis

## Overview
In this project, I explore and analyze the employee database of a Pewlett-Hackard company to help them determine the following:
<ol>
<li>  Retiring employees, and their titles </li>
<li> Employees Eligible for the Mentorship Program </li>
</ol>

#### Database Schema

Fig.1 shows the database schema which reflect the original tables presented in our database as well as the relationships among these tables. during our analysis, more tables are created and and added to the database.

![alt text](ERD.PNG)

## Results

In this section we discuss the results found during conducting our analysis to answer the two questions we had.

#### Deliverable 1
Interestingly, it's found that out of the 300024 employees in our database, 90398 of them are to retire! That's 30.1 % of the total employees. Naturally, most of these retiring employees, due to  the retiring age constraint, are senior employees. 57668 out of the 90398 total retiring employees are seniors. That's toal of ~ 64 % of the total retiring employees.

![alt text](Retiting_Titles.png)


#### Deliverable 2
To retrieve the employees eligible for mentorship program. Those employees are the **current employees who were born between January 1, 1965 and December 31, 1965.** the query retrieved 1549 employees eligible for the mentorship program. They are shown in fig. 3.

![alt text](Mentor_Eligibilty.png)


## Summary
There are some interesting findings deduced from our conducted analysis:
<ol>
<li> 30% of the total employees are retiring.
<li> 64% of the retiring employees are seniors
<li> There are 1549 current employees eligible for the mentorship program
