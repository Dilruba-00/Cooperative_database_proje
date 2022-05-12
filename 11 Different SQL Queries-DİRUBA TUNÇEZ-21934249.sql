 
-- 1- Calling the member_name in the 'member table' and the payment_amount in the 'payments table'
SELECT m.member_name, p.payment_amount
FROM member m, payments p
WHERE m.id_member = p.FK_member_id;
 
 
 -- 2- Calling the member 'member table' and the 'payments table'
 SELECT * 
 FROM member, lease
 WHERE member.id_member = lease.FK_id_member;
 
 
 -- 3- Calling the data in the 'member table' together with the data in the 'lease table'
 SELECT * 
 FROM member m LEFT JOIN lease l
 ON m.id_member = l.FK_id_member;
 
 
 -- 4- Calling the data together data from 'member table', 'lease table', and 'home_information' table
SELECT * 
FROM member m , lease l, home_information hi
WHERE m.id_member=hi.FK_iid_member
AND l.FK_id_member=hi.FK_iid_member;
 
 
 -- 5- Calling the data member_id and member_name information from 'member table', deposit information 
 -- from 'lease table' and door_number information from 'home_information table'
SELECT member_name, id_member, deposit, door_number
FROM member m , lease l, home_information hi
WHERE m.id_member=hi.FK_iid_member 
AND l.FK_id_member=hi.FK_iid_member;
 
 

 -- 6- Calling the data  member_name and id_member information from 'member table', visitor_information_name and 
 -- visitor_information_surname information from 'visitor_information table', door_number and number_of_rooms information from 'home_information table'
SELECT member_name, id_member, visitor_information_name, visitor_information_surname, door_number, number_of_rooms
FROM member m , visitor_information_ vi, home_information hi
WHERE m.id_member=hi.FK_iid_member 
AND vi.FK_id_membeer_=hi.FK_iid_member 
AND hi.FK_iid_member = m.id_member;

-- 7- In the 'member table', call the information of the members who are in Istanbul's Kadıköy district.
SELECT * FROM member
WHERE member_province='İstanbul'
AND member_state='Kadıköy'

-- 8- Calling the information of how many different cities are in the 'member table'
SELECT COUNT(DISTINCT member_province) FROM member;

-- 9- Return the average of all water expenses of the data in the 'expenses table'
SELECT AVG(water) FROM expenses;

 -- 10- Return names starting with ADFZ in 'tenant table'
SELECT * FROM tenant WHERE tenant_name  REGEXP '^[ADFZ]'

-- 11- Calling the how many different names are in the 'member table'
SELECT COUNT(DISTINCT member_name) FROM member;

 

 
