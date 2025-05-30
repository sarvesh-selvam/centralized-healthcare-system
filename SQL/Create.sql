use project_dma;

-- Create HOSPITAL table
CREATE TABLE HOSPITAL (
    Hospital_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Location VARCHAR(255),
    Contact VARCHAR(20)
);


-- Create PATIENT table
CREATE TABLE PATIENT (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATE,
    Contact VARCHAR(20),
    Insurance VARCHAR(50),
    Medical_History TEXT
);

-- Create ADMITS table
CREATE TABLE ADMITS (
    Hospital_ID INT NOT NULL,
    Patient_ID INT NOT NULL,
    FOREIGN KEY (Hospital_ID) REFERENCES HOSPITAL(Hospital_ID),
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID)
);

-- Create DOCTOR table
CREATE TABLE DOCTOR (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Specialization VARCHAR(255),
    Contact VARCHAR(20),
    Credentials VARCHAR(255),
    Hospital_ID INT NOT NULL,
    FOREIGN KEY (Hospital_ID) REFERENCES HOSPITAL(Hospital_ID)
);

-- Create TREATS table
CREATE TABLE TREATS (
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);

-- Create MESSAGE table
CREATE TABLE MESSAGE (
    Message_ID INT PRIMARY KEY,
    Date DATE,
    Priority VARCHAR(20),
    Content TEXT,
    Status VARCHAR(20),
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);

-- Create BILLING table
CREATE TABLE BILLING (
    Bill_ID INT PRIMARY KEY,
    Date DATE,
    Status VARCHAR(20),
    Amount DECIMAL(10, 2),
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);

-- Create APPOINTMENT table
CREATE TABLE APPOINTMENT (
    Appointment_ID INT PRIMARY KEY,
    Date DATE,
    Status VARCHAR(20),
    Reason TEXT,
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);

-- Create MEDICATION_TRACKER table
CREATE TABLE MEDICATION_TRACKER (
    Medicine_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Date DATE,
    Dose VARCHAR(50),
    Status VARCHAR(20),
    Patient_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID)
);

-- Create SUPPORT_GROUP table
CREATE TABLE SUPPORT_GROUP (
    Group_ID INT PRIMARY KEY,
    Description TEXT,
    Title VARCHAR(255),
    Meeting_Time TIME
);

-- Create ENROLLS table
CREATE TABLE ENROLLS (
    Patient_ID INT NOT NULL,
    Group_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Group_ID) REFERENCES SUPPORT_GROUP(Group_ID)
);

-- Create KNOWLEDGE_HUB table
CREATE TABLE KNOWLEDGE_HUB (
    Record_ID INT PRIMARY KEY
);

-- Create MEDICINE_INFO table
CREATE TABLE MEDICINE_INFO (
    Medicine_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Drug_Usage TEXT,
    Side_Effects TEXT,
    Record_ID INT NOT NULL,
    FOREIGN KEY (Record_ID) REFERENCES KNOWLEDGE_HUB(Record_ID)
);

-- Create DISEASE_INFO table
CREATE TABLE DISEASE_INFO (
    Disease_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Symptoms TEXT,
    Record_ID INT NOT NULL,
    FOREIGN KEY (Record_ID) REFERENCES KNOWLEDGE_HUB(Record_ID)
);

-- Create ACESSESS table
CREATE TABLE ACESSESS (
    Patient_ID INT NOT NULL,
    Record_ID INT NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENT(Patient_ID),
    FOREIGN KEY (Record_ID) REFERENCES KNOWLEDGE_HUB(Record_ID)
);
