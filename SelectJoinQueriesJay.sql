-- this select statement picks the info from the Membership table and adds the details for the members associated with each memberhsip based on member_id

SELECT * FROM public."Membership"
INNER JOIN public."Member" ON public."Membership".member_id = public."Member".member_id;

-- this statement shows the member's name, address, and id on top of the corresponding information in the rewards program table

SELECT "Member".name, "Member".address_id, "RewardsProgram".*
FROM "RewardsProgram"
JOIN "Member" ON "RewardsProgram".member_id = "Member".member_id;

-- this statement shows how we can combine data from multiple different tables to make it easier to see relationships between tables

SELECT "FitnessClass".*, "Attendance".member_id, "Location".facility_name
FROM "FitnessClass"
JOIN "Attendance" ON "FitnessClass".class_id = "Attendance".class_id
JOIN "Location" ON "FitnessClass".studio_id = "Location".studio_id;