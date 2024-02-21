CREATE TABLE public."Attendance"
(
   class_id integer NOT NULL,
   member_id integer NOT NULL,
   attendance_date date NOT NULL,
   FOREIGN KEY (class_id) REFERENCES public."FitnessClass" (class_id),
   FOREIGN KEY (member_id) REFERENCES public."Member" (member_id) 
);

ALTER TABLE IF EXISTS public."Attendance"
    OWNER to postgres;