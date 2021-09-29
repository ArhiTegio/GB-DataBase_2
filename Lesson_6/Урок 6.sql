
���������������� �������, ������� ����������� �� �������, ���������� ��������� ������������� �/��� ��������� (JOIN ���� �� ���������).
WITH friends AS (SELECT (CASE WHEN user_id = 1 THEN friend_id ELSE user_id END) AS to_users_id  FROM friendship WHERE (user_id = 1 OR friend_id = 1) AND request_type_id IN (1, 2))
SELECT id, first_name, last_name FROM users WHERE id IN (SELECT to_users_id FROM friends);


����� ����� ��������� ������������. 
�� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.

--������� ���������� ������������ (� ������� ������ ���������)
with messages_ as (select from_user_id as from_id, to_user_id as to_id from messages UNION ALL select to_user_id as from_id, from_user_id as to_id from messages)
select from_id, count(1) as count_ from messages_ as t group by from_id order by count_ DESC LIMIT 1

-- ������� id ������������ � ����� ������� ������ � ������������� 19
with messages_ as (select from_user_id as from_id, to_user_id as to_id from messages UNION ALL select to_user_id as from_id, from_user_id as to_id from messages)
select to_id as max_comm_friend_id from (
select to_id, count(1) as cnt from messages_ where from_id = 19
group by to_id 
order by cnt DESC LIMIT 1) as t

���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
���������� ��� ������ �������� ������ (�����) - ������� ��� �������?

--����� 10 ����� ������� ������������� 
with ya_users as (select id from users order by YEAR (CURRENT_DATE()) - YEAR(birthday) limit 10)
select count(1) from likes where user_id in (select id from ya_users)

--������ ����� �� ���� ����� union
select 'Female' as g, Count(1) as cnt from likes where user_id in (select id from users where gender = 'F')
union
select 'Male' as g, Count(1) as cnt from likes where user_id in (select id from users where gender = 'M')



����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ���������� ����.
with actions_users as ( 
select * from (
select id, 0 as cnt from users where id not in (select id from (
select id, sum(cnt) as summ from (
select user_id as id, count(1) as cnt from likes group by user_id 
union all
select user_id as id, count(1) as cnt from posts group by user_id 
union all
select from_user_id as id, count(1) as cnt from messages group by from_user_id 
union all
select user_id as id, count(1) as cnt from media group by user_id ) as action_
group by id
) as r)
union 
select * from (
select id, sum(cnt) as summ from (
select user_id as id, count(1) as cnt from likes group by user_id 
union all
select user_id as id, count(1) as cnt from posts group by user_id 
union all
select from_user_id as id, count(1) as cnt from messages group by from_user_id 
union all
select user_id as id, count(1) as cnt from media group by user_id ) as action_
group by id
) as r) as t  order by cnt limit 10)

select * from users where id in (select id from actions_users)






