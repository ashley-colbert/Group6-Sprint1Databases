CREATE TABLE public."Billing"
(
    billing_id serial NOT NULL,
    membership_id integer NOT NULL,
    bill_date date NOT NULL,
    due_date date NOT NULL,
    status character varying(24) NOT NULL,
    amount integer NOT NULL,
    fee_id integer NOT NULL,
    receipt_id integer NOT NULL,
    PRIMARY KEY (billing_id)
);

ALTER TABLE IF EXISTS public."Billing"
    OWNER to postgres;