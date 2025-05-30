use project_dma;

-- Display all Patient information (using Simple Query)

select *
from Patient
order by 1;


-- Determine Total number of Doctors in each Specialization (using Aggregate)

select Specialization, count(*) as NumberOfDoctors
from Doctor
group by (Specialization);


-- Total Amount Billed by each Doctor (using Aggregate)

select B.doctor_ID, D.name, sum(B.amount) as TotalBilledAmount
from Billing B, Doctor D
where B.doctor_ID = D.doctor_ID
group by B.doctor_ID
order by 3 desc;



-- Patients with Upcomping Appointments (using Inner Join)

select P.name as PatientName, D.name as DoctorName, A.date as AppointmentDate
from Patient P, Doctor D, Treats T, Appointment A
where P.patient_ID = T.patient_ID
	and T.doctor_ID = D.doctor_ID
    and D.doctor_ID = A.doctor_ID
	and A.Date > current_date();


-- Display all Doctors regardless if they have an Apppointment or not (using Outer Join)

select D.doctor_ID, D.Name, A.Date
from Doctor as D left outer join Appointment as A
	on D.Doctor_ID = A.Doctor_ID;


-- Information of Patients in Support Group for 'Allergy Support' (using Nested Query)

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
);


-- Display Doctors having greater than 5 'Unread' Messages (using Correlated Query)

select D.Doctor_ID, D.Name as Doctor_Name, count(M.Message_ID) as Unread_Message_Count
from Doctor D, Message M
where M.Doctor_ID = D.Doctor_ID
group by D.Doctor_ID
having Unread_Message_Count > 5;


-- Doctors with the Most number of Patients (using >=ALL)

select D.Doctor_ID, D.Name as Doctor_Name, D.Specialization, count(T.Patient_ID) as Patient_Count
from Doctor D, Treats T
where D.Doctor_ID = T.Doctor_ID
group by D.Doctor_ID
having count(T.Patient_ID) >= ALL (
    select COUNT(Patient_ID) as PatientCount
    from Treats
    group by Doctor_ID
);


-- Information of Patients who have an Unpaid Bill or an Upcoming Appointment (using Union)

select  P.Patient_ID, P.Name as Patient_Name, P.contact
from Patient P, Billing B 
where P.Patient_ID = B.Patient_ID
	and B.Status = 'pending'
    
UNION

select P.Patient_ID, P.Name as Patient_Name, P.contact
from Patient P, Appointment A 
where P.Patient_ID = A.Patient_ID
	and A.Date > CURRENT_DATE;
    
    
    
--  Determining Hospitals with Patients above the age of 50 (using SubQuery)

select HospitalID, HospitalName
from (
		select H.Hospital_ID as HospitalID, H.Name AS HospitalName,
		(
			select count(*)
			from Patient P, Doctor D, Treats T
            where P.Patient_ID = T.Patient_ID
				and T.Doctor_ID = D.Doctor_ID
                and D.Hospital_ID = H.Hospital_ID 
                and floor(datediff(curdate(), P.DateOfBirth) / 365) > 50
		) as PatientsAbove50
		from Hospital H
) as Hospital_New
where PatientsAbove50 > 0;
