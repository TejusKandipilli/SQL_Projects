--I have used begin transaction and rollback transaction for most of the queries to prevent any lasting changes for the sake of the 
--presentation


--Q1-Creating 4 tables for Employee,Position,Location and Employee Management and importing the data from the excel into SQL Server
CREATE TABLE CS.Employee (
EmpID NVARCHAR(50),
EmpName NVARCHAR(50),
Gender NVARCHAR(50),
DOB DATE,
Hire_Date DATE,
CONSTRAINT PK_Employee PRIMARY KEY (EmpID)
)

CREATE TABLE CS.LOCATION (
ID NVARCHAR(50),
LocationName NVARCHAR(50),
CONSTRAINT PK_Employee PRIMARY KEY (ID)
)

CREATE TABLE CS.Position (
ID NVARCHAR(50),
PositionName NVARCHAR(50),
CONSTRAINT PK_Employee PRIMARY KEY (ID)
)

CREATE TABLE CS.Employee_Management (
EmpID NVARCHAR(50),
Location NVARCHAR(50),
Position_ID NVARCHAR(50),
Salary INT,
CONSTRAINT PK_Employee PRIMARY KEY (EmpID),
CONSTRAINT FK_Location FOREIGN KEY (Location) REFERENCES cs.Location (ID),
CONSTRAINT FK_Position_ID FOREIGN KEY (Position_ID) REFERENCES cs.Position (ID)
)


GO
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_001', N'Sofia Lopez', N'Female', CAST(N'1980-01-01' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_002', N'Youssef Ahmed', N'Male', CAST(N'1980-01-02' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_003', N'Leila Kim', N'Female', CAST(N'1980-01-03' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_004', N'Emilia Santos', N'Female', CAST(N'1980-01-04' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_005', N'Ahmed Hassan', N'Male', CAST(N'1980-01-05' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_006', N'Anabelle Garcia', N'Female', CAST(N'1980-01-06' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_007', N'Markus Andersson', N'Male', CAST(N'1980-01-07' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_008', N'Fatima Ali', N'Female', CAST(N'1980-01-08' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_009', N'Nabil Ibrahim', N'Male', CAST(N'1980-01-09' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_010', N'Hannah Lee', N'Female', CAST(N'1980-01-10' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_011', N'Amir Hadi', N'Male', CAST(N'1980-01-11' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_012', N'Samantha Thompson', N'Female', CAST(N'1980-01-12' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_013', N'Mario Rossi', N'Female', CAST(N'1980-01-13' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_014', N'Tariq Khan', N'Male', CAST(N'1980-01-14' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_015', N'Ingrid Johansson', N'Male', CAST(N'1980-01-15' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_016', N'Santiago Rodriguez', N'Male', CAST(N'1980-01-16' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_017', N'Lila Nguyen', N'Female', CAST(N'1980-01-17' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_018', N'Aliyah Khan', N'Male', CAST(N'1980-01-18' AS Date), CAST(N'2023-04-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_019', N'Dylan Williams', N'Male', CAST(N'1980-01-19' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_020', N'Juan Martinez', N'Male', CAST(N'1980-01-20' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_021', N'Piotr Nowak', N'Male', CAST(N'1980-01-21' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_022', N'Anita Kumar', N'Female', CAST(N'1980-01-22' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_023', N'Hugo Garcia', N'Male', CAST(N'1980-01-23' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_024', N'Ana Silva', N'Female', CAST(N'1980-01-24' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_025', N'Rami Al-Farouq', N'Male', CAST(N'1980-01-25' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_026', N'Maya Kimura', N'Female', CAST(N'1980-01-26' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_027', N'Victor Hernandez', N'Male', CAST(N'1980-01-27' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_028', N'Fatima Soumah', N'Female', CAST(N'1980-01-28' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_029', N'Sofia Andersen', N'Female', CAST(N'1980-01-29' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_030', N'Ali Karimi', N'Male', CAST(N'1980-01-30' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_031', N'Luisa Rodriguez', N'Female', CAST(N'1980-01-31' AS Date), CAST(N'2023-05-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_032', N'Jair Bolivar', N'Male', CAST(N'1980-02-01' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_033', N'Elisabeth Schneider', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_034', N'Ahmed Al-Saidi', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_035', N'Nora Johansen', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_036', N'Yousef Abdel-Hakim', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_037', N'Amara Bello', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_038', N'Mohamed Khoury', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_039', N'Maria Santos', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_040', N'Sari Al-Farsi', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_041', N'Julia Novak', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_042', N'Amina Khalil', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_043', N'Vasilis Papadopoulos', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_044', N'Tala Al-Mansoori', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_045', N'Sophia Kovalenko', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_046', N'Esther Kim', N'Female', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_047', N'Abdallah Diop', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_048', N'Daniel Popescu', N'Male', CAST(N'1989-05-23' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_049', N'Aaliyah Ahmed', N'Male', CAST(N'1999-07-24' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_050', N'Jakob Olsen', N'Male', CAST(N'1999-07-25' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_051', N'Carolina Gonzalez', N'Female', CAST(N'1999-07-26' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_052', N'Mohamed El-Khatib', N'Male', CAST(N'1999-07-27' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_053', N'Pilar Hernandez', N'Male', CAST(N'1999-07-28' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_054', N'Khalid Ahmed', N'Male', CAST(N'1999-07-29' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_055', N'Emma Svensson', N'Female', CAST(N'1999-07-30' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_056', N'Nikola Petrovic', N'Female', CAST(N'1999-07-31' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_057', N'Grace Lee', N'Female', CAST(N'1999-08-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_058', N'Arjun Patel', N'Male', CAST(N'1999-08-02' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_059', N'Lucy Taylor', N'Female', CAST(N'1999-08-03' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_060', N'Hector Gomez', N'Male', CAST(N'1999-08-04' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_061', N'Aisha Khan', N'Female', CAST(N'1999-08-05' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_062', N'Emir Kaya', N'Male', CAST(N'1999-08-06' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_063', N'Alessandra Rossi', N'Female', CAST(N'1999-08-07' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_064', N'Fadi Mahmoud', N'Male', CAST(N'1999-08-08' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_065', N'Lucas Fernandez', N'Male', CAST(N'1999-08-09' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_066', N'Jamila Omar', N'Male', CAST(N'1999-08-10' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_067', N'Ivan Petrov', N'Male', CAST(N'1999-08-11' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_068', N'Lea Rasmussen', N'Male', CAST(N'1999-08-12' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_069', N'Amirah Abdul-Rahman', N'Male', CAST(N'1999-08-13' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_070', N'Jana Novakova', N'Female', CAST(N'1999-08-14' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_071', N'Mohammad Khalid', N'Male', CAST(N'1999-08-15' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_072', N'Olga Ivanova', N'Male', CAST(N'1999-08-16' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_073', N'Mustafa Karim', N'Male', CAST(N'1999-08-17' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_074', N'Katerina Papadopoulos', N'Female', CAST(N'1999-08-18' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_075', N'Pablo Rodriguez', N'Male', CAST(N'1999-08-19' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_076', N'Nada Al-Amir', N'Male', CAST(N'1999-08-20' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_077', N'Andrei Popov', N'Female', CAST(N'1999-08-21' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_078', N'Jasmine Chen', N'Female', CAST(N'1999-08-22' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_079', N'Ismail Ali', N'Male', CAST(N'1999-08-23' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_080', N'Laura Martin', N'Female', CAST(N'1999-08-24' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_081', N'Nikos Georgiou', N'Male', CAST(N'1999-08-25' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_082', N'Aisha Farah', N'Female', CAST(N'1999-08-26' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_083', N'Jonas Andersen', N'Male', CAST(N'1999-08-27' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_084', N'Leif Johansson', N'Male', CAST(N'1999-08-28' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_085', N'Zara Ahmed', N'Female', CAST(N'1999-08-29' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_086', N'Yara Al-Bassam', N'Female', CAST(N'1999-08-30' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_087', N'Tomas Jansen', N'Male', CAST(N'1999-08-31' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_088', N'Livia Bucur', N'Female', CAST(N'1999-09-01' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_089', N'Omar Al-Mansoor', N'Male', CAST(N'1999-09-02' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_090', N'Eliana Vargas', N'Female', CAST(N'1999-09-03' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_091', N'Amin Moussa', N'Male', CAST(N'1999-09-04' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_092', N'Amelie Dubois', N'Female', CAST(N'1999-09-05' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_093', N'Saif Ali', N'Male', CAST(N'1999-09-06' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_094', N'Mia Hansen', N'Female', CAST(N'1999-09-07' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_095', N'Matteo Romano', N'Male', CAST(N'1999-09-08' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_096', N'Laila Akhtar', N'Female', CAST(N'1999-09-09' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_097', N'Ivan Vukovic', N'Male', CAST(N'1999-09-10' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_098', N'Gabriela Alvarez', N'Female', CAST(N'1999-09-11' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_099', N'Emil Lund', N'Male', CAST(N'1999-09-12' AS Date), CAST(N'2022-11-01' AS Date))
INSERT [CS].[Employee] ([EmpID], [EmpName], [Gender], [DOB], [Hire_date]) VALUES (N'Emp_100', N'Amirah Yusuf', N'Male', CAST(N'1999-09-13' AS Date), CAST(N'2022-11-01' AS Date))
GO
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L001', N'India')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L002', N'UK')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L003', N'USA')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L004', N'Australia')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L005', N'Japan')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L006', N'China')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L007', N'Thailand')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L008', N'Canada')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L009', N'Germany')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L010', N'Europe')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L011', N'Newzeland')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L012', N'Denmark')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L013', N'UAE')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L014', N'Russia')
INSERT [CS].[Location] ([ID], [LocationName]) VALUES (N'L015', N'Vietnam')
GO
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_01', N'Senior Vice President')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_02', N'Vice President')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_03', N'Director')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_04', N'Senior Manager')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_05', N'Assistant Manager')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_06', N'Manager')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_07', N'Senior Associate')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_08', N'Associate')
INSERT [CS].[Position] ([ID], [PositionName]) VALUES (N'POS_09', N'Intern')
GO
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_001', N'L001', N'POS_04', 250000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_002', N'L002', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_003', N'L003', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_004', N'L004', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_005', N'L005', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_006', N'L006', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_007', N'L007', N'POS_02', 300000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_008', N'L008', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_009', N'L009', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_010', N'L010', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_011', N'L011', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_012', N'L012', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_013', N'L013', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_014', N'L014', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_015', N'L015', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_016', N'L001', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_017', N'L002', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_018', N'L003', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_019', N'L004', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_020', N'L005', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_021', N'L006', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_022', N'L007', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_023', N'L008', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_024', N'L009', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_025', N'L010', N'POS_04', 250000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_026', N'L011', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_027', N'L012', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_028', N'L013', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_029', N'L014', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_030', N'L015', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_031', N'L001', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_032', N'L002', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_033', N'L003', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_034', N'L004', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_035', N'L005', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_036', N'L006', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_037', N'L007', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_038', N'L008', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_039', N'L009', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_040', N'L010', N'POS_04', 250000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_041', N'L011', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_042', N'L012', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_043', N'L013', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_044', N'L014', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_045', N'L015', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_046', N'L001', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_047', N'L002', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_048', N'L003', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_049', N'L004', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_050', N'L005', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_051', N'L006', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_052', N'L007', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_053', N'L008', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_054', N'L009', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_055', N'L010', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_056', N'L011', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_057', N'L012', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_058', N'L013', N'POS_01', 500000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_059', N'L014', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_060', N'L015', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_061', N'L001', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_062', N'L002', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_063', N'L003', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_064', N'L004', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_065', N'L005', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_066', N'L006', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_067', N'L007', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_068', N'L008', N'POS_04', 250000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_069', N'L009', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_070', N'L010', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_071', N'L011', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_072', N'L012', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_073', N'L013', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_074', N'L014', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_075', N'L015', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_076', N'L001', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_077', N'L002', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_078', N'L003', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_079', N'L004', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_080', N'L005', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_081', N'L006', N'POS_06', 230000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_082', N'L007', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_083', N'L008', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_084', N'L009', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_085', N'L010', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_086', N'L011', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_087', N'L012', N'POS_03', 700000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_088', N'L013', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_089', N'L014', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_090', N'L015', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_091', N'L001', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_092', N'L002', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_093', N'L003', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_094', N'L004', N'POS_05', 200000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_095', N'L005', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_096', N'L006', N'POS_09', 5000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_097', N'L007', N'POS_08', 36000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_098', N'L008', N'POS_07', 50000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_099', N'L009', N'POS_04', 250000)
INSERT [CS].[Employee_Management] ([EmpID], [Location], [Position_ID], [Salary]) VALUES (N'Emp_100', N'L010', N'POS_09', 5000)
GO




--Q2-Returning details of all the employees who are female using where condition
SELECT * 
FROM cs.Employee 
WHERE gender = 'Female' -- Using where condition to filter rows

go

--or
CREATE PROCEDURE FindEmpByGender  -- Creating a stored procedure to filter employees by gender
(@gender NVARCHAR(50))
AS
BEGIN
SELECT * 
FROM cs.Employee 
WHERE gender = @gender
END

go

--Executing the stored procedure
exec FindEmpByGender 'Female'
--or
exec FindEmpByGender 'male'



--Q3-Returning employee details whose names start with A and employee details whose names dont contain the letter A
begin --Execute all the statements between begin and end
SELECT 'Employees whose names start with A' AS category
,COUNT(*) AS number_of_employees  
FROM cs.employee					--Showing count of employees whose names start with 'A' using count()
WHERE EmpName like 'a%'
SELECT * FROM cs.employee	
WHERE EmpName like 'a%'				
SELECT 'Employees whose names dont contain the letter A' AS category,	--Showing count of employees whose names dont contain the letter 'A' using count()		
COUNT(*) AS number_of_employees 
FROM cs.employee WHERE EmpName not like '%a%'
SELECT * FROM cs.employee WHERE EmpName not like '%a%'
end




BEGIN TRANSACTION --Query to fix the importing issue where the month and day parts of hire_date column got mixed up
UPDATE cs.Employee SET
Hire_date = DATEFROMPARTS(YEAR(hire_date), DAY(hire_date), MONTH(hire_date))
SELECT hire_date FROM cs.Employee
ROLLBACK TRANSACTION


go
--Q3-Fetch employee details whose name starts with A and also fetch employee details whose name does not contain character 'a'.

Create procedure EmpDetByLetters (@startswith nvarchar(50) = null,@hasin nvarchar(50) = null,@endswith nvarchar(50) = null) as
begin

if @startswith is not null and @hasin is not null and @endswith is not null 
begin
select * from cs.Employee where EmpName like @startswith + '%' and empname like  '%' + @hasin + '%' and empname like '%' + @endswith
end

else if @startswith is not null and @endswith is not null
begin
select * from cs.Employee where EmpName like @startswith + '%' and empname like '%' + @endswith
end

else if @startswith is not null
begin
select * from cs.Employee where EmpName like @startswith + '%'
end

end

go

--Selecting all employees from cs.employee
select * from cs.Employee


--Executing the procedure-You can use only these combinations of parameters for this stored procedure
--(
--1.@startswith,@hasin,@endswith
--2.@startswith,@endswith
--3.@startswith
--)
exec EmpDetByLetters 's'
--or
exec EmpDetByLetters 's','a','son'


go


--Q4-Returning details of newly joined employees
SELECT * 
FROM cs.Employee 
WHERE hire_date >= 
DATEADD(MONTH,-6,(SELECT MAX(Hire_date) FROM cs.Employee)) --Using dateadd() function to show employees joined in the last 6 months 
														   --counting from the last joined employee hire date
--or

SELECT * FROM cs.employee WHERE YEAR(Hire_date) = 2023   --Returning employee details who joined in the year 2023

--or
SELECT * FROM cs.Employee WHERE Hire_date > '20230101' and Hire_date < CURRENT_TIMESTAMP 

GO

--Q4--Retrieve the list of employees who joined the company recently.

create procedure RecentEmployees (@joinedafter date) as
begin
SELECT * FROM cs.employee WHERE Hire_date >= @joinedafter
end


go

--Executing the procedure
exec RecentEmployees '20230601'

go


--Q5-Creating a view to return the employee details and annual salary of every employee
CREATE VIEW vw_Annual_Salaries AS
SELECT empm.EmpID,emp.EmpName,emp.Hire_date,empm.Salary,(salary*12) AS Annual_Salary FROM
cs.Employee_Management empm
inner join			--Using a inner join to join Employee_Management table and EMployee table
cs.Employee emp
ON empm.EmpID = emp.EmpID

GO

--Selecting all columns from the vw_Annual_Salaries view
SELECT * FROM vw_Annual_Salaries

--Solution as a select statement
SELECT *,(salary*12) AS Annual_Salary FROM cs.Employee_Management
--or
SELECT empm.EmpID,emp.EmpName,emp.Hire_date,empm.Salary,(salary*12) AS Annual_Salary FROM
cs.Employee_Management empm
inner join
cs.Employee emp
on empm.EmpID = emp.EmpID


GO



--Q6-Creating a view to return the employee_name,DOB,LocationName,Gender,PositionName using joins
CREATE VIEW vw_Emp_Pos_Loc AS
SELECT emp.EmpName,emp.DOB,loc.LocationName AS LOCATION,
emp.Gender,pos.PositionName AS Position 
FROM cs.Employee emp
inner join							--Using inner joins to combine all the 4 tables and selecting the required columns in the select statement
cs.Employee_Management empm
ON emp.EmpID = empm.EmpID
inner join
cs.Location loc
ON empm.Location = loc.ID
inner join
cs.Position pos
ON empm.Position_ID = pos.ID

GO

--Selecting all columns from the vw_Emp_Pos_Loc view
SELECT * FROM vw_Emp_Pos_Loc





--Q7-Demonstrating the difference between delete,truncate,truncate using any of your existing tables

--Demonstrating the various ways we can use delete statement
--1--Absence of Where condition results in the deletion of all rows
USE emp 
BEGIN TRANSACTION
DELETE FROM dbo.Attendances
SELECT * FROM dbo.Attendances
ROLLBACK TRANSACTION

--2-Presence of Where condition results in the deletion of rows which met the Where condition
USE emp 
BEGIN TRANSACTION
DELETE FROM dbo.Attendances
WHERE Employee_ID = 1
SELECT * FROM dbo.Attendances
ROLLBACK TRANSACTION


--Demonstrating the truncate statement
--It deletes all rows without deleting the table structure
USE emp 
BEGIN TRANSACTION
TRUNCATE TABLE dbo.attendances
SELECT * FROM dbo.Attendances
ROLLBACK TRANSACTION



--Demonstrating the drop statement
--It deletes all rows and the underlying table structure too
USE emp 
BEGIN TRANSACTION
DROP TABLE dbo.Attendances
SELECT * FROM dbo.Attendances
ROLLBACK TRANSACTION


GO



--Q8--Query to promote employee "Sofia Lopez" to Director, terminate the existing Director and also promote "Leila Kim" to Senior Manager

USE Employee_Management;


BEGIN TRANSACTION 
DELETE FROM cs.Employee_Management WHERE Position_ID = (SELECT id FROM cs.Position WHERE PositionName = 'Director')  --Deleting the rows where position = 'Director'

SELECT empm.EmpID,emp.EmpName,pos.PositionName FROM cs.Employee_Management empm
INNER JOIN
cs.Employee emp
ON empm.EmpID = emp.EmpID		--Displaying employees whose position is 'Director'
INNER JOIN 
cs.Position pos
ON empm.Position_ID = pos.ID
WHERE PositionName = 'Director'

UPDATE cs.Employee_Management 
SET Position_ID = (SELECT ID FROM cs.Position WHERE PositionName = 'Director')
WHERE EmpID = (SELECT EmpID FROM cs.Employee WHERE EmpName = 'Sofia Lopez')		--Promoting Sofia Lopez to 'Director'

SELECT empm.EmpID,emp.EmpName,pos.PositionName FROM cs.Employee_Management empm
INNER JOIN
cs.Employee emp
ON empm.EmpID = emp.EmpID					--Displaying employee detials where position is 'Director'
INNER JOIN 
cs.Position pos
ON empm.Position_ID = pos.ID
WHERE PositionName = 'Director'

UPDATE cs.Employee_Management 
SET Position_ID = (SELECT id FROM cs.Position WHERE PositionName = 'Senior Manager')
WHERE EmpID = (SELECT EmpID FROM cs.Employee WHERE EmpName = 'Leila Kim')				--Promoting Leila Kim to position of 'Senior Manager'

SELECT empm.EmpID,emp.EmpName,pos.PositionName FROM cs.Employee_Management empm
INNER JOIN
cs.Employee emp
ON empm.EmpID = emp.EmpID
INNER JOIN 
cs.Position pos
ON empm.Position_ID = pos.ID
WHERE EmpName = 'Leila Kim'			--Displaying the details of Leila Kim
ROLLBACK TRANSACTION


GO


--Q8--Promote employee "Sofia Lopez" to Director, terminate the existing Director and also promote "Leila Kim" to Senior Manager

create procedure ChangeEmpPosition (@EmpID nvarchar(50) = null,@PosName nvarchar(50) = null,@PosID nvarchar(50) = null) as
begin transaction
if @posname is not null
begin
UPDATE cs.Employee_Management 
SET Position_ID = (SELECT ID FROM cs.Position WHERE PositionName = @PosName)
WHERE EmpID = @EmpID
end 
else if @PosID is not null
begin
UPDATE cs.Employee_Management 
SET Position_ID = @PosID
WHERE EmpID = @EmpID
end
commit transaction


go

--Checking employee details

select * from cs.Employee_Management
select * from cs.Position


--Executing the Procedure
begin transaction
exec ChangeEmpPosition @empid = 'Emp_003',@posname = 'Manager' 
select * from cs.Employee_Management
rollback transaction


--Q9-Creating a stored procedure using the concept of passing the parameters to transfer an employee from one location to another.
CREATE PROCEDURE TransferingEmployee 
(@EmpID NVARCHAR(50),@TransferLocationName NVARCHAR(50) = '0',@TransferLocationID NVARCHAR(50) = '0')
AS
BEGIN
SELECT 'Before Updation'  AS STATUS

SELECT empm.EmpID,loc.ID AS LocationID,loc.LocationName 
FROM cs.Employee_Management empm
INNER JOIN									--Shows the details of the employee before updating Location
cs.Location loc
ON empm.Location = loc.ID
WHERE EmpID = @EmpID

SELECT 'After Updation' AS STATUS

UPDATE cs.Employee_Management SET
Location = (SELECT ID FROM cs.Location			--Updaing the location of the employee
WHERE LocationName = @TransferLocationName or ID = @TransferLocationID)

SELECT empm.EmpID,loc.ID AS LocationID,loc.LocationName 
FROM cs.Employee_Management empm
INNER JOIN									--Shows the details of the employee after updating Location		
cs.Location loc	
ON empm.Location = loc.ID
WHERE EmpID = @EmpID
END



--Executing the procedure using LocationName
BEGIN TRANSACTION
EXEC TransferingEmployee @EmpID = 'Emp_001',@TransferLocationName = 'UK'
ROLLBACK TRANSACTION

--Executing the procedure using LocationID
BEGIN TRANSACTION
EXEC TransferingEmployee @EmpID = 'Emp_001',@TransferLocationID = 'L004'
ROLLBACK TRANSACTION






--Q10-Writing a Query to display the current salary of the employee "Ana Silva" 
--and based on Hire Date give 5% increment after six months and insert this data into new table without effecting any of the existing tables. 

BEGIN TRANSACTION 
SELECT emp.EmpID,emp.EmpName,emp.Hire_date,empm.Salary,(DATEADD(MONTH,6,Hire_date)) AS Salary_Hike_Month,
((5*Salary/100)+Salary) AS Salary_After_Hike  
INTO cs.SalaryAfterHikes			--Using into statement to simultaneously create a new table and insert the result of the query as row for the newly created table
FROM cs.Employee emp
INNER JOIN
cs.Employee_Management empm
ON emp.EmpID = empm.EmpID
WHERE EmpName = 'Ana Silva'

SELECT * FROM cs.SalaryAfterHikes
ROLLBACK TRANSACTION


go
----Stored Procedures-----



