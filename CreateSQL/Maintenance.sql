-- create statement for maintenance table

CREATE TABLE public."Maintenance"
(
    maintenance_id serial NOT NULL,
    equipment_id integer NOT NULL,
    schedule_date date NOT NULL,
    completed_date date,
    description character varying(84) NOT NULL,
    instructor_id integer NOT NULL,
    PRIMARY KEY (maintenance_id)
);

ALTER TABLE IF EXISTS public."Maintenance"
    OWNER to postgres;