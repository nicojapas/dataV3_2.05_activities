-- 1. Get all junior cards issued last year. Hint: Use the numeric value (980000).
select * from bank.card
where type = 'junior' and left(issued,6) >= 980000;

-- 2. Get the first 10 transactions for withdrawals that are not in cash. You will need the extended case study information to tell you which values are required here, and you will need to refer to conditions on two columns.
select * from bank.trans
where type = 'VYDAJ' and operation != 'VYBER'
limit 10;

-- 3. Refine your query from last activity on loans whose contract finished and not paid back - filtered to loans where they were left with a debt bigger than 1000. Return the debt value together with loan id and account id. Sort by the highest debt value to the lowest.
SELECT account_id, loan_id, amount FROM bank.loan
where status in ('D') and amount > 1000
order by amount;

-- 4. Get the biggest and the smallest transaction with non-zero values in the database (use the trans table in the bank database).
select max(amount) as max_amount, min(amount) as min_amount from bank.trans
where amount != 0;

-- 5. Get account information with an extra column year showing the opening year as 'YY'. Eg., 1995 will show as 95. Hint: Look at the first two characters of the string date in the account table.
-- You would have to use function substr. Google is your friend.
 select *, substr(date, 1, 2) as opening_year from bank.account;