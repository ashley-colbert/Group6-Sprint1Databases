SELECT equipment_id FROM "Maintenance";
SELECT schedule_date FROM "Maintenance";


SELECT m.*, i.name FROM
"Maintenance" m
INNER JOIN instructor i ON m.instructor_id = i.instructor_id;

SELECT m.*, mem.contact_details FROM
"Maintenance" m
INNER JOIN
	Member mem ON member_id = mem.member_id;