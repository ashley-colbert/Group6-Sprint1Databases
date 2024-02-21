CREATE TABLE FitnessClass (
    class_id SERIAL PRIMARY KEY,
    studi0_id integer,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    duration INTERVAL,
    schedule VARCHAR(100),
    capacity INT
);