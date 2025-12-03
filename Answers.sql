--Ex 2
SELECT * FROM departments;

--Ex 3 
SELECT * FROM patients ORDER BY date_of_birth ASC;

--Ex 4
SELECT DISTINCT gender FROM patients;

--Ex 5
SELECT * FROM doctors LIMIT 3;

--Ex 6
SELECT * FROM patients WHERE YEAR(date_of_birth) > 2000;

--Ex 7
SELECT * FROM doctors 
WHERE department_id IN (
    SELECT department_id FROM departments 
    WHERE department_name = 'Cardiologie' OR department_name = 'Neurologie'
);

--Ex 8
SELECT * FROM admissions WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';

--Ex 9
SELECT first_name, last_name,   
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 18 THEN 'Enfant'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) <= 65 THEN 'Adulte'
        ELSE 'Senior'
    END AS category
FROM patients;

--Ex 10
SELECT COUNT(*) FROM appointments;

--Ex 11
SELECT department_id, COUNT(*) 
FROM doctors 
GROUP BY department_id;

--Ex 12
SELECT AVG(TIMESTAMPDIFF(year, date_of_birth,CURDATE())) FROM patients;

--Ex 13
SELECT MAX(appointment_date) FROM appointments;

--Ex 14
SELECT room_id, COUNT(*) FROM admissions 
GROUP BY room_id;

--Ex 15
SELECT * FROM patients WHERE email IS NULL OR email = '';

--Ex 16
SELECT a.appointment_date, 
       (SELECT CONCAT(first_name, ' ', last_name) FROM patients WHERE patient_id = a.patient_id) AS patient_name,
       (SELECT CONCAT(first_name, ' ', last_name) FROM doctors WHERE doctor_id = a.doctor_id) AS doctor_name
FROM appointments a;

--Ex 17
DELETE FROM appointments WHERE appointment_date < '2024-01-01';

--Ex 18
UPDATE departments SET department_name = 'Cancer Treatment' 
WHERE department_name = 'Oncology';

--Ex 19
SELECT gender, COUNT(*) FROM patients GROUP BY gender HAVING COUNT(*) >= 2;

--Ex 20
CREATE VIEW active_admissions AS SELECT * FROM admissions WHERE discharge_date IS NULL;