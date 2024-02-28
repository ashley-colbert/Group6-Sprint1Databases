CREATE TABLE public."Schedule"
(
    class_id integer NOT NULL,
    instructor_id integer NOT NULL,
    duration interval NOT NULL,
    FOREIGN KEY (class_id) REFERENCES public."FitnessClass" (class_id),
    FOREIGN KEY (instructor_id) REFERENCES public."Instructor" (instructor_id)
);

ALTER TABLE IF EXISTS public."Schedule"
    OWNER to postgres;