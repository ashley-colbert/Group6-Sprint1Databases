-- membership table foreign keys

ALTER TABLE "Membership"
ADD CONSTRAINT fk1
FOREIGN KEY (member_id)
REFERENCES "Member"(member_id),
ADD CONSTRAINT fk2
FOREIGN KEY (fee_id)
REFERENCES "Fees"(fee_id);

-- Attendance foreign keys 

ALTER TABLE "Attendance"
ADD CONSTRAINT fk1
FOREIGN KEY (member_id)
REFERENCES "Member"(member_id),
ADD CONSTRAINT fk2
FOREIGN KEY (class_id)
REFERENCES "FitnessClass"(class_id);

-- Schedule foreign keys

ALTER TABLE "Schedule"
ADD CONSTRAINT fk1
FOREIGN KEY (instructor_id)
REFERENCES "Instructor"(instructor_id),
ADD CONSTRAINT fk2
FOREIGN KEY (class_id)
REFERENCES "FitnessClass"(class_id);

-- FitnessClass foreign key

ALTER TABLE "FitnessClass"
ADD CONSTRAINT fk1
FOREIGN KEY (studio_id)
REFERENCES "Location"(studio_id);

-- Instructor foreign keys

ALTER TABLE "Instructor"
ADD CONSTRAINT fk1
FOREIGN KEY (studio_id)
REFERENCES "Location"(studio_id),
ADD CONSTRAINT fk2
FOREIGN KEY (address_id)
REFERENCES "Address"(address_id);

-- Member foreign keys

ALTER TABLE "Member"
ADD CONSTRAINT fk1
FOREIGN KEY (address_id)
REFERENCES "Address"(address_id);

-- Rewards program foreign keys

ALTER TABLE "RewardsProgram"
ADD CONSTRAINT fk1
FOREIGN KEY (member_id)
REFERENCES "Member"(member_id);

-- Maintenance foreign key

ALTER TABLE "Maintenance"
ADD CONSTRAINT fk1
FOREIGN KEY (equipment_id)
REFERENCES "Equipment"(equipment_id),
ADD CONSTRAINT fk2
FOREIGN KEY (instructor_id)
REFERENCES "Instructor"(instructor_id);

-- Receipt foreign keys

ALTER TABLE "Billing"
ADD CONSTRAINT fk1
FOREIGN KEY (membership_id)
REFERENCES "Membership"(membership_id),
ADD CONSTRAINT fk2
FOREIGN KEY (fee_id)
REFERENCES "Fees"(fee_id),
ADD CONSTRAINT fk3
FOREIGN KEY (receipt_id)
REFERENCES "Receipt"(receipt_id);