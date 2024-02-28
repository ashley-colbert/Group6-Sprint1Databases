-- creates an index on the billing table between the billing_id and the membership_id

CREATE INDEX billing_by_membershipID
ON "Billing" (billing_id, membership_id)

--creates an index on the member table between the name and contact_details

CREATE INDEX member_by_contact
ON "Member" (name, contact_details)
