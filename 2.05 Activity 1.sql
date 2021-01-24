-- # 2.05 Activity 1

-- 1. Select districts and salaries (from the `district` table) where salary is greater than 10000. Return columns as `district_name` and `average_salary`.
select A2 as 'district_name', A11 as 'average_salary' from bank.district
where A11 > 10000;

-- 2. Select those loans whose contract finished and were not paid. **Hint**: You should be looking at the `loan` column and you will need the extended case study information to tell you which value of status is required.
SELECT * FROM bank.loan
where status in ('D');

-- 3. Select cards of type `junior`. Return just first 10 in your query.
select * from bank.card
where type in ('junior')
limit 10;

-- 4. Select those loans whose contract finished and not paid back. Return the debt value from the status you identified in the last activity, together with loan id and account id.
SELECT loan_id, account_id, amount FROM bank.loan
where status = 'D';

-- 5. Calculate the urban population for all districts. Hint: You are looking for the number of inhabitants and the % of urban inhabitants in each district. Return columns as district_name and urban_population.
select A2 as district_name, round(A4*A10/100) as urban_population from bank.district;

-- 6. On the previous query result - rerun it but filtering out districts where the rural population is greater than 50%.
select A2 as district_name, round(A4*A10/100) as urban_population from bank.district
where A10 > 0.5;

