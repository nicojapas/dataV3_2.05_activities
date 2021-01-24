-- # 2.05 Activity 3

-- 1. Get `card_id` and `year_issued` for all gold cards.
select card_id, concat('19', left(issued,2)) as year_issued from bank.card
where type = 'gold';

-- 2. When was the first gold card **issued**? (Year)
select concat('19', left(min(issued),2)) as year_issued from bank.card
where type = 'gold';

-- 3. Get issue date as:
--    - date_issued: 'November 7th, 1993'
--    - fecha_emision: '07 of November of 1993'
select  date_format(date(concat('19',left(issued,2),'-',substr(issued,3,2),'-',substr(issued,5,2))), '%M %D, %Y') as year_issued from bank.card;
select  date_format(date(concat('19',left(issued,2),'-',substr(issued,3,2),'-',substr(issued,5,2))), '%d of %M of %Y') as fecha_emision from bank.card;