INSERT INTO HEALTH_ORG.Address (address_id, postcode, street_name, city, country)
VALUES 
(1, 10001, 'Main St', 'New York', 'USA'),
(2, 20002, '2nd St', 'Washington', 'USA'),
(3, 30003, '3rd Ave', 'Chicago', 'USA');

-- Inserting values into Appointment table
INSERT INTO HEALTH_ORG.Appointment (appointment_id, appointment_date)
VALUES 
(1, '2024-07-18 10:00:00'),
(2, '2024-07-19 14:00:00'),
(3, '2024-07-20 09:00:00');

-- Inserting values into Treatment table
INSERT INTO HEALTH_ORG.Treatment (treatment_id, treatment_type, treatment_cost)
VALUES 
(1, 'Medication', 150.00),
(2, 'Surgery', 5000.00),
(3, 'Therapy', 200.00);

-- Inserting values into Patient table
INSERT INTO HEALTH_ORG.Patient (patient_id, address_id, first_name, last_name, gender, date_of_birth)
VALUES 
(1, 1, 'John', 'Doe', 'Male', '1980-01-15'),
(2, 2, 'Jane', 'Smith', 'Female', '1990-02-25'),
(3, 3, 'Jim', 'Brown', 'Male', '1975-03-10');

-- Inserting values into Doctor table
INSERT INTO HEALTH_ORG.Doctor (doctor_id, address_id, first_name, last_name, specialisation)
VALUES 
(1, 1, 'Alice', 'Johnson', 'Cardiology'),
(2, 2, 'Bob', 'Williams', 'Neurology'),
(3, 3, 'Carol', 'Davis', 'Orthopedics');

-- Inserting values into Insurance table
INSERT INTO HEALTH_ORG.Insurance (insurance_id, patient_id, insurance_provider, insurance_coverage, policy_number)
VALUES 
(1, 1, 'Aetna', 'Full', 123456),
(2, 2, 'Blue Cross', 'Partial', 654321),
(3, 3, 'Cigna', 'Full', 112233);

-- Inserting values into Disease table
INSERT INTO HEALTH_ORG.Disease (disease_id, patient_id, disease_name)
VALUES 
(1, 1, 'Hypertension'),
(2, 2, 'Diabetes'),
(3, 3, 'Arthritis');

-- Inserting values into Patient_Treatment table
INSERT INTO HEALTH_ORG.Patient_Treatment (patient_id, treatment_id, treatment_date, feedback_score, side_effect_score)
VALUES 
(1, 1, '2024-07-18', 8, 2),
(2, 2, '2024-07-19', 9, 3),
(3, 3, '2024-07-20', 7, 1);

-- Inserting values into Medication table
INSERT INTO HEALTH_ORG.Medication (treatment_id, insurance_id, appointment_id, medication_name, dosage)
VALUES 
(1, 1, 1, 'Ibuprofen', 200),
(2, 2, 2, 'Metformin', 500),
(3, 3, 3, 'Prednisone', 10);

-- Inserting values into Surgery table
INSERT INTO HEALTH_ORG.Surgery (treatment_id, insurance_id, appointment_id, surgery_name, surgery_duration)
VALUES 
(2, 1, 1, 'Appendectomy', 90),
(2, 2, 2, 'Gallbladder Removal', 120),
(3, 3, 3, 'Knee Replacement', 150);