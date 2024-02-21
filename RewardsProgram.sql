CREATE TABLE RewardsProgram (
    reward_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    reward_description TEXT,
    reward_amount DECIMAL(10, 2),
    reward_date DATE
);