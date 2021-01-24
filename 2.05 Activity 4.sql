-- # 2.05 Activity 4

-- - Null or empty values are usually a problem. Think about why those null values can appear and think of ways of dealing with them.
-- - Check for transactions with null or empty values for the column amount.
select
	*
from bank.trans
where (amount = null or amount = '');

-- - Count how many transactions have empty and non-empty k_symbol (in one query).
select
	case
		when k_symbol = '' then 'empty'
        when k_symbol != '' then 'non-empty'
	end as k_symbol_status,
    count(*) as k_symbol_count
from bank.trans
group by (k_symbol = '');