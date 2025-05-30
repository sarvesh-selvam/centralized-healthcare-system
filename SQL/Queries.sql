-- Display all Patient information (Simple Query)
Select * from patient 
order by 1;

-- Total number of Doctors in each specialization (Aggregate)
select specialization, count(*) as NumberOfDoctors
from doctor
group by (specialization); 

-- Patients with upcomping appointments (Inner Join)
select P.Name as PatientName, D.Name as DoctorName, A.Date as AppointmentDate
from Patient P, Doctor D, Treats T, Appointment A
where P.Patient_ID = T.Patient_ID
	and T.Doctor_ID = D.Doctor_ID
    and D.Doctor_ID = A.Doctor_ID
	and A.Date > current_date();
    
-- Retrieve all doctors regardless if they have an apppointment or not (Outer Join)
select D.doctor_ID, D.Name, A.Date
from Doctor as D left outer join Appointment as A
	on D.Doctor_ID = A.Doctor_ID; 

-- Information of Patients in a particular Support Group (Nested Query)
select Patient_ID, Name
from Patient
where Patient_ID in (
	select Patient_ID
    from Enrolls
    where Group_ID in (
		select Group_ID
        from Support_Group
        where Title = 'Allergy Support'
	)
); -- add more patients in same group

-- Doctor with the most number of patients (>=ALL)
SELECT D.Doctor_ID, D.Name AS Doctor_Name, D.Specialization, COUNT(T.Patient_ID) AS Patient_Count
FROM DOCTOR D
JOIN TREATS T ON D.Doctor_ID = T.Doctor_ID
GROUP BY D.Doctor_ID
HAVING COUNT(T.Patient_ID) >= ALL (
    SELECT COUNT(Patient_ID) AS PatientCount
    FROM TREATS
    GROUP BY Doctor_ID
);

-- Query for patients with unpaid bills or has an upcoming appointment (Union)
SELECT 
    P.Patient_ID,
    P.Name AS Patient_Name, 
    P.contact
FROM 
    PATIENT P
JOIN 
    BILLING B ON P.Patient_ID = B.Patient_ID
WHERE 
    B.Status = 'pending'
-- Union with the query for patients with upcoming appointments
UNION
-- Query for patients with upcoming appointments
SELECT 
    P.Patient_ID,
    P.Name AS Patient_Name,
    P.contact
FROM 
    PATIENT P
JOIN 
    APPOINTMENT A ON P.Patient_ID = A.Patient_ID
WHERE 
    A.Date > CURRENT_DATE;


-- Select messages with(Sub query)
SELECT 
    Doctor_ID,
    Doctor_Name,
	Unread_Message_Count
FROM (
	select 
        D.Doctor_ID, 
        D.Name AS Doctor_Name,
        (SELECT COUNT(M.Message_ID)
        FROM MESSAGE M
        WHERE M.Doctor_ID = D.Doctor_ID
        AND M.Status = 'Unread'
    ) AS Unread_Message_Count
    from 
		Doctor D
) AS New_doctor
WHERE
Unread_Message_Count > 5;

SELECT
    H.Hospital_ID AS HospitalID,
    H.Name AS HospitalName,
    (
        SELECT COUNT(*)
        FROM Patient P
        JOIN Treats T ON P.Patient_ID = T.Patient_ID
        JOIN Doctor D ON T.Doctor_ID = D.Doctor_ID
        WHERE D.Hospital_ID = H.Hospital_ID AND FLOOR(DATEDIFF(CURDATE(), P.DateOfBirth) / 365) > 50
    ) AS PatientsAbove50
FROM
    Hospital H
WHERE PatientsAbove50 > 0;

