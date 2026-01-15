#creating the database
CREATE DATABASE HEALTH_ORG;
######

##creating tables inside HEALTH_ORG database in correct order
#1. Address
CREATE TABLE HEALTH_ORG.Address (
	address_id INT NOT NULL,
    postcode INT NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (address_id)
);

#2. Appointment
CREATE TABLE HEALTH_ORG.Appointment (
	appointment_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    PRIMARY KEY (appointment_id)
);

#3. Treatment
CREATE TABLE HEALTH_ORG.Treatment (
	treatment_id INT NOT NULL,
    treatment_type VARCHAR(50) NOT NULL,
    treatment_cost FLOAT NOT NULL,
    PRIMARY KEY (treatment_id)
);

#4. Patient
CREATE TABLE HEALTH_ORG.Patient (
	patient_id INT NOT NULL,
    address_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    PRIMARY KEY (patient_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

#5. Doctor
CREATE TABLE HEALTH_ORG.Doctor (
	doctor_id INT NOT NULL,
    address_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialisation VARCHAR(50) NOT NULL,
    PRIMARY KEY (doctor_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

#6. Insurance
CREATE TABLE HEALTH_ORG.Insurance (
	insurance_id INT NOT NULL,
    patient_id INT NOT NULL,
    insurance_provider VARCHAR(50) NOT NULL,
    insurance_coverage VARCHAR(50) NOT NULL,
    policy_number INT NOT NULL,
    PRIMARY KEY (insurance_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

#7. Disease
CREATE TABLE HEALTH_ORG.Disease (
	disease_id INT NOT NULL,
    patient_id INT NOT NULL,
    disease_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (disease_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

#8. Patient_Treatment
CREATE TABLE HEALTH_ORG.Patient_Treatment (
	patient_id INT NOT NULL,
    treatment_id INT NOT NULL,
    treatment_date DATE NOT NULL,
    feedback_score INT NOT NULL,
    side_effect_score INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (treatment_id) REFERENCES Treatment(treatment_id)
);

#9. Medication
CREATE TABLE HEALTH_ORG.Medication (
	treatment_id INT NOT NULL,
    insurance_id INT NOT NULL,
    appointment_id INT NOT NULL,
    medication_name VARCHAR(50) NOT NULL,
    dosage INT NOT NULL,
    FOREIGN KEY (treatment_id) REFERENCES Treatment(treatment_id),
    FOREIGN KEY (insurance_id) REFERENCES Insurance(insurance_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

#10. Surgery
CREATE TABLE HEALTH_ORG.Surgery (
	treatment_id INT NOT NULL,
    insurance_id INT NOT NULL,
    appointment_id INT NOT NULL,
    surgery_name VARCHAR(50) NOT NULL,
    surgery_duration INT NOT NULL,
    FOREIGN KEY (treatment_id) REFERENCES Treatment(treatment_id),
    FOREIGN KEY (insurance_id) REFERENCES Insurance(insurance_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

INSERT INTO HEALTH_ORG.Address (address_id, postcode, street_name, city, country)
VALUES 
(1, 10001, 'Main St', 'New York', 'USA'),
(2, 20002, '2nd St', 'Washington', 'USA'),
(3, 30003, '3rd Ave', 'Chicago', 'USA'),
(4, 40004, '4th Blvd', 'Los Angeles', 'USA'),
(5, 50005, '5th St', 'Houston', 'USA'),
(6, 60006, '6th Rd', 'Phoenix', 'USA'),
(7, 70007, '7th Pl', 'Philadelphia', 'USA'),
(8, 80008, '8th Ln', 'San Antonio', 'USA'),
(9, 90009, '9th Dr', 'San Diego', 'USA'),
(10, 10010, '10th Way', 'Dallas', 'USA');

-- Inserting values into Appointment table
INSERT INTO HEALTH_ORG.Appointment (appointment_id, appointment_date)
VALUES 
(1, '2024-07-18 10:00:00'),
(2, '2024-07-19 14:00:00'),
(3, '2024-07-20 09:00:00'),
(4, '2024-07-21 11:00:00'),
(5, '2024-07-22 13:00:00'),
(6, '2024-07-23 15:00:00'),
(7, '2024-07-24 10:30:00'),
(8, '2024-07-25 12:00:00'),
(9, '2024-07-26 14:30:00'),
(10, '2024-07-27 16:00:00');

-- Inserting values into Treatment table
INSERT INTO HEALTH_ORG.Treatment (treatment_id, treatment_type, treatment_cost)
VALUES 
(1, 'Medication', 150.00),
(2, 'Surgery', 5000.00),
(3, 'Therapy', 200.00),
(4, 'Radiation', 3000.00),
(5, 'Chemotherapy', 4500.00),
(6, 'Physical Therapy', 100.00),
(7, 'Psychotherapy', 250.00),
(8, 'Dialysis', 400.00),
(9, 'Transplant', 7000.00),
(10, 'Vaccination', 50.00);

-- Inserting values into Patient table
INSERT INTO HEALTH_ORG.Patient (patient_id, address_id, first_name, last_name, gender, date_of_birth)
VALUES 
(1, 1, 'John', 'Doe', 'Male', '1980-01-15'),
(2, 2, 'Jane', 'Smith', 'Female', '1990-02-25'),
(3, 3, 'Jim', 'Brown', 'Male', '1975-03-10'),
(4, 4, 'Emily', 'Davis', 'Female', '1985-04-20'),
(5, 5, 'Michael', 'Wilson', 'Male', '1995-05-30'),
(6, 6, 'Sarah', 'Miller', 'Female', '1988-06-05'),
(7, 7, 'David', 'Taylor', 'Male', '1979-07-15'),
(8, 8, 'Laura', 'Anderson', 'Female', '1982-08-25'),
(9, 9, 'Daniel', 'Thomas', 'Male', '1992-09-10'),
(10, 10, 'Jessica', 'Moore', 'Female', '1983-10-20');

-- Inserting values into Doctor table
INSERT INTO HEALTH_ORG.Doctor (doctor_id, address_id, first_name, last_name, specialisation)
VALUES 
(1, 1, 'Alice', 'Johnson', 'Cardiology'),
(2, 2, 'Bob', 'Williams', 'Neurology'),
(3, 3, 'Carol', 'Davis', 'Orthopedics'),
(4, 4, 'Eve', 'Martinez', 'Dermatology'),
(5, 5, 'Frank', 'Garcia', 'Pediatrics'),
(6, 6, 'Grace', 'Robinson', 'Oncology'),
(7, 7, 'Hank', 'Clark', 'Psychiatry'),
(8, 8, 'Ivy', 'Rodriguez', 'Surgery'),
(9, 9, 'Jack', 'Lewis', 'Ophthalmology'),
(10, 10, 'Kate', 'Lee', 'Gastroenterology');

-- Inserting values into Insurance table
INSERT INTO HEALTH_ORG.Insurance (insurance_id, patient_id, insurance_provider, insurance_coverage, policy_number)
VALUES 
(1, 1, 'Aetna', 'Full', 123456),
(2, 2, 'Blue Cross', 'Partial', 654321),
(3, 3, 'Cigna', 'Full', 112233),
(4, 4, 'UnitedHealth', 'Partial', 445566),
(5, 5, 'Humana', 'Full', 778899),
(6, 6, 'Kaiser', 'Partial', 990011),
(7, 7, 'Anthem', 'Full', 223344),
(8, 8, 'Centene', 'Partial', 556677),
(9, 9, 'WellCare', 'Full', 889900),
(10, 10, 'Molina', 'Partial', 334455);

-- Inserting values into Disease table
INSERT INTO HEALTH_ORG.Disease (disease_id, patient_id, disease_name)
VALUES 
(1, 1, 'Hypertension'),
(2, 2, 'Diabetes'),
(3, 3, 'Arthritis'),
(4, 4, 'Asthma'),
(5, 5, 'COPD'),
(6, 6, 'Heart Disease'),
(7, 7, 'Cancer'),
(8, 8, 'Stroke'),
(9, 9, 'Alzheimer\'s'),
(10, 10, 'Osteoporosis');

-- Inserting values into Patient_Treatment table
INSERT INTO HEALTH_ORG.Patient_Treatment (patient_id, treatment_id, treatment_date, feedback_score, side_effect_score)
VALUES 
(1, 1, '2024-07-18', 8, 2),
(2, 2, '2024-07-19', 9, 3),
(3, 3, '2024-07-20', 7, 1),
(4, 4, '2024-07-21', 6, 2),
(5, 5, '2024-07-22', 5, 3),
(6, 6, '2024-07-23', 9, 1),
(7, 7, '2024-07-24', 8, 2),
(8, 8, '2024-07-25', 7, 1),
(9, 9, '2024-07-26', 6, 2),
(10, 10, '2024-07-27', 9, 3);

-- Inserting values into Medication table
INSERT INTO HEALTH_ORG.Medication (treatment_id, insurance_id, appointment_id, medication_name, dosage)
VALUES 
(1, 1, 1, 'Ibuprofen', 200),
(2, 2, 2, 'Metformin', 500),
(3, 3, 3, 'Prednisone', 10),
(4, 4, 4, 'Aspirin', 100),
(5, 5, 5, 'Lisinopril', 20),
(6, 6, 6, 'Omeprazole', 40),
(7, 7, 7, 'Amoxicillin', 250),
(8, 8, 8, 'Simvastatin', 80),
(9, 9, 9, 'Clonazepam', 2),
(10, 10, 10, 'Levothyroxine', 150);

-- Inserting values into Surgery table
INSERT INTO HEALTH_ORG.Surgery (treatment_id, insurance_id, appointment_id, surgery_name, surgery_duration)
VALUES 
(2, 1, 1, 'Appendectomy', 90),
(2, 2, 2, 'Gallbladder Removal', 120),
(3, 3, 3, 'Knee Replacement', 150),
(4, 4, 4, 'Hip Replacement', 180),
(5, 5, 5, 'Heart Bypass', 240),
(6, 6, 6, 'Cataract Surgery', 60),
(7, 7, 7, 'Hernia Repair', 45),
(8, 8, 8, 'Spinal Fusion', 210),
(9, 9, 9, 'Prostate Surgery', 120),
(10, 10, 10, 'Tonsillectomy', 30);