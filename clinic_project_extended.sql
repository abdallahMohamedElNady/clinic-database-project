

create table departments (
    departmentid int primary key,
    departmentname varchar(100) not null
);


create table doctors (
    doctorid int primary key,
    doctorname varchar(100),
    specialty varchar(100),
    phone varchar(15),
    departmentid int,
    foreign key (departmentid) references departments(departmentid)
);


create table patients (
    patientid int primary key,
    patientname varchar(100),
    gender varchar(10),
    birthdate date,
    phone varchar(15)
);


create table appointments (
    appointmentid int primary key,
    patientid int,
    doctorid int,
    appointmentdate date,
    appointmenttime time,
    foreign key (patientid) references patients(patientid),
    foreign key (doctorid) references doctors(doctorid)
);


create table medicalrecords (
    recordid int primary key,
    appointmentid int,
    diagnosis text,
    prescription text,
    foreign key (appointmentid) references appointments(appointmentid)
);


create table invoices (
    invoiceid int primary key,
    appointmentid int,
    amount decimal(10,2),
    paymentstatus varchar(50),
    foreign key (appointmentid) references appointments(appointmentid)
);


insert into departments values 
(1, 'internal medicine'),
(2, 'dentistry'),
(3, 'pediatrics'),
(4, 'cardiology'),
(5, 'dermatology'),
(6, 'neurology'),
(7, 'orthopedics'),
(8, 'radiology'),
(9, 'surgery'),
(10, 'urology');

insert into doctors values 
(1, 'ahmed Moawad', 'internal medicine', '0 128 265 3442', 1),
(2, 'mohamed khader', 'dentist', '0100000002', 2),
(3, 'abdallah elnady', 'cardiology', '01279247804', 4),
(4, 'omar hassan', 'pediatrician', '0100000004', 3),
(5, 'reem adel', 'dermatologist', '0100000005', 5),
(6, 'youssef fathy', 'neurologist', '0100000006', 6),
(7, 'laila yousry', 'orthopedic', '0100000007', 7),
(8, 'tamer salah', 'radiologist', '0100000008', 8),
(9, 'huda samir', 'surgeon', '0100000009', 9),
(10, 'khaled omar', 'urologist', '0100000010', 10);

insert into patients values 
(1, 'mohamed ali', 'male', '1990-05-01', '0111111111'),
(2, 'mona khaled', 'female', '1988-03-14', '0122222222'),
(3, 'hassan yousef', 'male', '1975-11-20', '0123333333'),
(4, 'nour gamal', 'female', '2000-06-12', '0124444444'),
(5, 'tarek ahmed', 'male', '1985-07-23', '0125555555'),
(6, 'dina salah', 'female', '1995-01-30', '0126666666'),
(7, 'kareem nabil', 'male', '1983-09-18', '0127777777'),
(8, 'samar osama', 'female', '1992-10-10', '0128888888'),
(9, 'mostafa reda', 'male', '1999-12-25', '0129999999'),
(10, 'aya fathy', 'female', '2001-03-03', '0130000000');

insert into appointments values 
(1, 1, 1, '2025-05-10', '10:00:00'),
(2, 2, 2, '2025-05-11', '12:00:00'),
(3, 3, 3, '2025-05-12', '09:30:00'),
(4, 4, 4, '2025-05-13', '11:00:00'),
(5, 5, 5, '2025-05-14', '13:00:00'),
(6, 6, 6, '2025-05-15', '14:30:00'),
(7, 7, 7, '2025-05-16', '08:00:00'),
(8, 8, 8, '2025-05-17', '15:00:00'),
(9, 9, 9, '2025-05-18', '16:00:00'),
(10, 10, 10, '2025-05-19', '17:30:00');

insert into medicalrecords values 
(1, 1, 'cold and flu', 'paracetamol'),
(2, 2, 'tooth pain', 'antibiotic and painkiller'),
(3, 3, 'heart arrhythmia', 'aspirin and beta blockers'),
(4, 4, 'fever', 'acetaminophen'),
(5, 5, 'skin rash', 'topical cream'),
(6, 6, 'headache', 'ibuprofen'),
(7, 7, 'broken arm', 'cast and rest'),
(8, 8, 'chest x-ray', 'radiology scan'),
(9, 9, 'appendicitis', 'surgery scheduled'),
(10, 10, 'urinary infection', 'antibiotics');

insert into invoices values 
(1, 1, 300.00, 'paid'),
(2, 2, 400.00, 'unpaid'),
(3, 3, 700.00, 'paid'),
(4, 4, 150.00, 'paid'),
(5, 5, 200.00, 'unpaid'),
(6, 6, 250.00, 'paid'),
(7, 7, 500.00, 'unpaid'),
(8, 8, 350.00, 'paid'),
(9, 9, 800.00, 'unpaid'),
(10, 10, 450.00, 'paid');
