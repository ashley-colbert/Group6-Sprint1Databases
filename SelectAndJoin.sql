-- Display's all information on the Billing and Membership tables through the membership_id

SELECT * FROM "Billing" FULL OUTER JOIN "Membership" ON "Billing".membership_id = "Membership".membership_id

--This join statement displays how we can retrieve a great deal of relevant information about a member and their billing. Can my very useful when printing receipts to ensure that all relevant information is readily available.

SELECT "Member".name, "Receipt".*, "Membership".membership_id, "Billing".billing_id, "Fees".fee_id
FROM "Receipt"
JOIN "Billing" ON "Receipt".receipt_id = "Billing".receipt_id
JOIN "Fees" ON "Billing".fee_id = "Fees".fee_id
JOIN "Membership" ON "Billing".membership_id = "Membership".membership_id
JOIN "Member" ON "Membership".member_id = "Member".member_id;

--This join will display can connect and retrieve any information about the status of any maintenance to be performed on the gym equipment, including the instructor scheduled to perform it.

SELECT "Maintenance".*,  "Instructor".name, "Equipment".equip_name
FROM "Equipment"
JOIN "Maintenance" ON "Equipment".equipment_id = "Maintenance".equipment_id
JOIN "Instructor" ON  "Maintenance".instructor_id = "Instructor".instructor_id;

-- This statement will select and display all personal contact information for the instructors

SELECT "Instructor".name, "Instructor".contact_info, "Address".*
FROM "Address"
Join "Instructor" ON "Address".address_id = "Instructor".address_id;

-- This select statement will group the types of equipment and do a count of each type, then return the count and equipment name.

SELECT COUNT(equip_name), equip_name FROM "Equipment" GROUP BY equip_name

--This will sort all the equipment and list each item by its status.

SELECT * FROM "Equipment" ORDER BY status;

-- This will select the equipment_id from the "Maintenance" table.

SELECT equipment_id FROM "Maintenance";

-- This will select the schedule_date from the "Maintenance" table.

SELECT schedule_date FROM "Maintenance";

-- Joins "Maintenance" onto instructor

SELECT m.*, i.name FROM
"Maintenance" m
INNER JOIN "Instructor" i ON m.instructor_id = i.instructor_id;

-- Joins "Maintenance" onto member

SELECT m.*, mem.contact_details FROM
"Maintenance" m
INNER JOIN "Member" mem ON member_id = mem.member_id;

-- Joins "Maintenance" onto fitnessclass

SELECT m.*, fc.name
FROM "Maintenance" m
INNER JOIN "FitnessClass" fc ON m.equipment_id = fc.class_id;

-- Joins "Maintenance" onto rewardsprogram

SELECT m.*, rp.reward_amount
FROM "Maintenance" m
INNER JOIN "RewardsProgram" rp ON m.equipment_id = rp.member_id