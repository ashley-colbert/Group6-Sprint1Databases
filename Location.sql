CREATE TABLE public."Location"
(
    studio_id serial NOT NULL,
    facility_name character varying(255) NOT NULL,
    fitness_room character varying(3) NOT NULL,
    PRIMARY KEY (studio_id)
);

ALTER TABLE IF EXISTS public."Location"
    OWNER to postgres;