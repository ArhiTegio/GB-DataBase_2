--����� ����� ��������� ������������. �� ���� ������������� ���. ���� ������� ��������, 
--������� ������ ���� ������� � ��������� ������������� (������� ��� ���������).
select u.id, u.first_name, u.last_name, u.gender, u.email, u.phone, count(1) as count_ from users as u 
left join messages as m on m.from_user_id = u.id 
where m.to_user_id = 1
group by u.id
order by count_ DESC 
limit 1

���������� ����� ���������� ������, ������� �������� ������������ ������ 10 ���..
select u.id, u.first_name, u.last_name, YEAR (CURRENT_DATE()) - YEAR(u.birthday) as years, count(1) as cnt from users as u
inner join likes as l on l.user_id = u.id
group by u.id 
order by years 
limit 10

���������� ��� ������ �������� ������ (�����): ������� ��� �������.
select u.gender, count(1) as cnt from users as u 
inner join likes as l on l.user_id = u.id 
group by u.gender 






