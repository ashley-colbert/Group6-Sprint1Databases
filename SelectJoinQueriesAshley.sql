-- Display's all information on the Billing and Membership tables through the membership_id

SELECT * FROM "Billing" FULL OUTER JOIN "Membership" ON "Billing".membership_id = "Membership".membership_id

--This join statement displays how we can retrieve a great deal of relevant information about a member and their billing. Can my very useful when printing receipts to ensure that all relevant information is readily available.

SELECT "Member".name, "Receipt".*, "Membership".membership_id, "Billing".billing_id, "Fees".fee_id
FROM "Receipt"
JOIN "Billing" ON "Receipt".receipt_id = "Billing".receipt_id
JOIN "Fees" ON "Billing".fee_id = "Fees".fee_id
JOIN "Membership" ON "Billing".membership_id = "Membership".membership_id
JOIN "Member" ON "Membership".member_id = "Member".member_id;

--This join will display can connect and retrieve any information about the status of any maintenace to be performed on the gym equipment, including the instructor scheduled to perform it.

SELECT "Maintenance".*,  "Instructor".name, "Equipment".equip_name
FROM "Equipment"
JOIN "Maintenance" ON "Equipment".equipment_id = "Maintenance".equipment_id
JOIN "Instructor" ON  "Maintenance".instructor_id = "Instructor".instructor_id;

-- This statement will select and display all personal contact information for the instructors

SELECT "Instructor".name, "Instructor".contact_info, "Address".*
FROM "Address"
Join "Instructor" ON "Address".address_id = "Instructor".address_id;