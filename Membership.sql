CREATE TABLE public."Membership"
(
    membership_id serial NOT NULL,
    member_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date,
    payment_method character varying(45) NOT NULL,
    fee_id integer NOT NULL,
    active boolean NOT NULL DEFAULT true,
    PRIMARY KEY (membership_id),
    FOREIGN KEY (member_id) REFERENCES public."Member" (member_id),
    FOREIGN KEY (fee_id) REFERENCES public."Fees" (fee_id)
);

ALTER TABLE IF EXISTS public."Membership"
    OWNER to postgres;