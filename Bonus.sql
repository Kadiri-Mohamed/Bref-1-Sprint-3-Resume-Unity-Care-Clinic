--Bonus 1
SELECT 
    patients.first_name AS patient_first_name,
    doctors.first_name AS doctor_first_name,
FROM admissions
JOIN patients ON admissions.patient_id = patients.patient_id
JOIN doctors ON admissions.doctor_id = doctors.doctor_id;

--Bonus 2
SELECT 
    appointments.appointment_id,
    appointments.appointment_date,
    departments.department_name,
    doctors.first_name AS doctor_first_name,
    patients.first_name AS patient_first_name,
FROM appointments
JOIN doctors ON appointments.doctor_id = doctors.doctor_id
JOIN departments ON doctors.department_id = departments.department_id
JOIN patients ON appointments.patient_id = patients.patient_id;


--Bonus 3
SELECT 
    doctors.first_name AS doctor_first_name,
    doctors.last_name AS doctor_last_name,
    medications.medication_name,
    COUNT(prescriptions.prescription_id) AS prescription_count
FROM prescriptions
JOIN doctors ON prescriptions.doctor_id = doctors.doctor_id
JOIN medications ON prescriptions.medication_id = medications.medication_id
GROUP BY doctors.doctor_id, medications.medication_id;

--Bonus 4
SELECT 
    admissions.admission_id,
    admissions.admission_date,
    rooms.room_number,
    rooms.room_type,
    patients.first_name AS patient_first_name,
FROM admissions
JOIN rooms ON admissions.room_id = rooms.room_id
JOIN patients ON admissions.patient_id = patients.patient_id;

--Bonus 5
SELECT 
    departments.department_name,
    COUNT(DISTINCT admissions.patient_id) AS patient_count,
    COUNT(admissions.admission_id) AS admissions_count
FROM admissions
JOIN rooms ON admissions.room_id = rooms.room_id
JOIN departments ON rooms.room_id = departments.department_id
GROUP BY departments.department_id;
