CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(20),
    referred_by_id INT
);

INSERT INTO candidates (candidate_id, name, role, referred_by_id) VALUES
(1, 'Alice', 'employee', NULL),
(2, 'Bob', 'applicant', 1),
(3, 'Joe', 'employee', NULL),
(4, 'Carol', 'applicant', 1),
(5, 'Dan', 'applicant', 3);

SELECT * FROM candidates;

SELECT c.name AS candidate_name, r.name AS referral_name
FROM candidates AS c
INNER JOIN candidates AS r
	ON c.referred_by_id = r.candidate_id;