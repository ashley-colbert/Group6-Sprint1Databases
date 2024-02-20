CREATE TABLE public."Equipment"
(
    equipment_id serial NOT NULL,
    equip_name character varying(32) NOT NULL,
    quantity integer NOT NULL,
    status character varying(24) NOT NULL,
    PRIMARY KEY (equipment_id)
);

ALTER TABLE IF EXISTS public."Equipment"
    OWNER to postgres;