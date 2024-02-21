CREATE TABLE Instructor (
    instructor_id SERIAL PRIMARY KEY,
    address_id integer,
    studio_id integer,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(100),
    availability VARCHAR(100),
);