PHASE I
Conceptual Enhanced Entity Relationship Diagram
Earlier Version of EERD (See Appendix A)
Feedback Received (see Appendix B)
Explanation of Changes (see Appendix C)
Final EERD
 
Figure 1 : Enhanced Entity Relationship Diagram
PHASE II 
Star Schema of Data Warehouse
 
Figure 2 : Start-schema for data warehousing

Tables using MySQL (see Appendix D)
Creating database healthcare 
 
Figure 3: database created
Creating tables
 
Figure 4: SQL Queries_creatin tables
 
Figure 5: Tables created in DB
Inserting Data into Tables (see Appendix E)
 
Figure 6: Inserting data SQL Queries
 
Figure 7: data added to Tables via Python
Graphical user interface (GUI) (see Appendix F)
https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a49de9cc-62d5-4386-8594-b1b70142ea94

 
Figure 8: Tkinter- Application GUI
SQL queries for Reports
https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a49de9cc-62d5-4386-8594-b1b70142ea94

Table 1: Reports and Queries Table
Report Title	Description	SQL Query
List of All Patients	Retrieves basic information for all patients	SELECT patient_id, first_name, last_name, gender, date_of_birth FROM Patient
List of All Doctors with Their Specializations	Retrieves basic information and specialization for all doctors	SELECT doctor_id, first_name, last_name, specialisation FROM Doctor
Appointments Scheduled for a Specific Date	Retrieves appointment details for a specified date	SELECT appointment_id, appointment_date FROM Appointment WHERE appointment_date = ‘2024-07-19’
Treatments Provided to Each Patient	Retrieves treatment details and feedback for each patient	SELECT p.patient_id, p.first_name, p.last_name, t.treatment_type, pt.feedback_score, pt.side_effect_score FROM Patient_Treatment pt JOIN Patient p ON pt.patient_id = p.patient_id JOIN Treatment t ON pt.treatment_id = t.treatment_id
Patients with Insurance Details	Retrieves insurance details for each patient	SELECT p.patient_id, p.first_name, p.last_name, i.insurance_provider, i.policy_number FROM Patient p JOIN Insurance i ON p.patient_id = i.patient_id
Doctors and Their Patients	Retrieves doctor and their corresponding patients based on address	SELECT d.doctor_id, d.first_name, d.last_name, p.patient_id, p.first_name, p.last_name FROM Doctor d JOIN Patient p ON d.address_id = p.address_id
List of All Treatments with Their Costs	Retrieves all treatments and their costs	SELECT treatment_id, treatment_type, treatment_cost FROM Treatment
Insurance Coverage Summary	Retrieves insurance coverage summary grouped by insurance provider	SELECT i.insurance_provider, COUNT(i.policy_number) AS policy_count, SUM(i.insurance_coverage) AS total_coverage FROM Insurance i GROUP BY i.insurance_provider
Diseases Diagnosed in Patients	Retrieves diseases diagnosed in each patient	SELECT p.patient_id, p.first_name, p.last_name, d.disease_name FROM Disease d JOIN Patient p ON d.patient_id = p.patient_id
List of Appointments with Associated Treatments	Retrieves appointments and associated treatments, including medications and surgeries	SELECT a.appointment_id, a.appointment_date, t.treatment_type FROM Appointment a JOIN Medication m ON a.appointment_id = m.appointment_id JOIN Treatment t ON m.treatment_id = t.treatment_id UNION SELECT a.appointment_id, a.appointment_date, t.treatment_type FROM Appointment a JOIN Surgery s ON a.appointment_id = s.appointment_id JOIN Treatment t ON s.treatment_id = t.treatment_id

Machine learning model
Predicting Treatment Cost (see Appendix G)
 
Figure 9: importing packages and splitting data for Model
 
Figure 10: Regressor Model training and testing
 
Figure 11: Data frame head Entries
 
Figure 12: Model Performance Matrix
the regression model performs reasonably well with an R² score of 0.847, which indicates that the model explains about 84.7% of the variance in the treatment cost. However, the Mean Squared Error and Mean Absolute Error values suggest room for improvement.
PART-C: INDIVIDUAL COMPONENT -BIG DATA APPLICATION AND ANALYTICS

a) Create a Hadoop test environment in Google Colab. Write a Hadoop MapReduce program inPython and test it with a choice of your dataset. You can use a plain text dataset like a book from Project Gutenberg.
https://colab.research.google.com/drive/1auI78i4aFZdi0YU85IkIm1023-CkFsv3?usp=sharing
b) Set up a single-node Hadoop cluster on Google Colab and run MapReduce example using Python.
https://colab.research.google.com/drive/1QDvOEDNkXR-WKX8K2Psz_yl5SCJlmfg0?usp=sharing
c) Show an application of Data Generation and Aggregation with Python's Faker Library and PySpark.
https://colab.research.google.com/drive/1BMqfcmHC-vIuDHzJG74GkR4ymIA83nrn?usp=sharing
d) Set up a single-node standalone Spark server on Google Colab including Web UI and History Server.
https://colab.research.google.com/drive/1OYcnp1ArNPqUBl62Darn23Amo_iaZTq_?usp=sharing
e) Set up a Schema for Spark in Google Colab and apply any three SQL queries.
https://colab.research.google.com/drive/1P7vfCkKLG2zzdo2duFdzQy4gAVCS3k46?usp=sharing


















