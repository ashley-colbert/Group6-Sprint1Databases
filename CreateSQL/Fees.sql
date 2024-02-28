CREATE TABLE public."Fees"
(
    fee_id serial NOT NULL,
    fee_name character varying(24) NOT NULL,
    description character varying(64) NOT NULL,
    price integer NOT NULL,
    PRIMARY KEY (fee_id)
);

ALTER TABLE IF EXISTS public."Fees"
    OWNER to postgres;