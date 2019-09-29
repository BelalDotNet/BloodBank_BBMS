Select * From Donor
Select * From Patient
Go

Create Proc sp_InsertDonorOrPatient 
	@type varchar(30),
	@name varchar(30),
	@gender varchar(10),
	@dob date,
	@bldGroup varchar(10),
	@email varchar(30),
	@phoneno varchar(20),
	@photo varchar(50),
	@contactAddress varchar(100)
AS 
Begin
if @type='Donor'
	Begin
		Insert Into Donor (DonorName, Gender, DOB, BloodGroup, Email, PhoneNo, Photo,ContactAddress) values(@name,@gender,@dob,@bldGroup,@email,@phoneno,@photo,@contactAddress)
	End
if @type='Patient'
	Begin
		Insert Into Patient(PatientName, Gender, DOB, BloodGroup, Email, PhoneNo, Photo,ContactAddress) values(@name,@gender,@dob,@bldGroup,@email,@phoneno,@photo,@contactAddress)
	End
End

Exec sp_InsertDonorOrPatient 'Donor','Mamun','Male','01/01/1993','A+','mamun@gmail.com','0123',null,'Sylhet'