CREATE TABLE FitnessClass (
    class_id SERIAL PRIMARY KEY,
    studio_id integer,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    capacity INT
);