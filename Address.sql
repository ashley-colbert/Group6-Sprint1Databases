CREATE TABLE public."Address"
(
    address_id serial NOT NULL,
    street_add character varying(32) NOT NULL,
    prov character varying(32) NOT NULL,
    postal_code character varying(7) NOT NULL,
    city character varying(24) NOT NULL
    PRIMARY KEY (address_id)
);

ALTER TABLE IF EXISTS public."Address"
    OWNER to postgres;