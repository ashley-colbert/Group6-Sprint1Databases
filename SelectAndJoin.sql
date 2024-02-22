SELECT equipment_id FROM "Maintenance";
SELECT schedule_date FROM "Maintenance";


SELECT m.*, i.name FROM
"Maintenance" m
INNER JOIN instructor i ON m.instructor_id = i.instructor_id;

SELECT m.*, mem.contact_details FROM
"Maintenance" m
INNER JOIN
	Member mem ON member_id = mem.member_id;

SELECT m.*, fc.name
FROM "Maintenance" m
INNER JOIN fitnessclass fc ON m.equipment_id = fc.class_id;

SELECT m.*, rp.reward_amount
FROM "Maintenance" m
INNER JOIN rewardsprogram rp ON m.equipment_id = rp.customer_id