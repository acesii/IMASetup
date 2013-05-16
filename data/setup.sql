SET foreign_key_checks = 0;

Drop Table grade;
Create Table grade (
GradeID INTEGER(10),
LongDesc VARCHAR(60),
ShortDesc VARCHAR(25),
Primary Key (GradeID)
) ;

Drop Table Nurses;
Create Table Nurses (
PersonID INTEGER(10) primary key,
FName VARCHAR(25),
SName VARCHAR(25),
Address1 VARCHAR(40),
Address2 VARCHAR(40),
Town VARCHAR(40),
County VARCHAR(40),
Postcode VARCHAR(20),
UKCCNo VARCHAR(10),
CCExpiry DATE,
DOB DATE,
GradeID INTEGER(10),
foreign key (GradeID) references grade(GradeID)
) ;

Drop Table specialism;
Create Table specialism (
SpecialismID INTEGER(10) primary key,
ShortDesc VARCHAR(15),
LongDesc VARCHAR(80)
) ;

Drop Table NurseSpecial;
Create Table NurseSpecial (
PersonID INTEGER(10),
SpecialismID INTEGER(10),
 primary key (PersonID,SpecialismID),
 foreign key (PersonID) references Nurses(PersonID),
 foreign key (SpecialismID) references specialism(specialismID)
) ;


Insert Into grade
Values(1,'Grade NNAA','GradeA');
Insert Into grade
Values(2,'Grade NNAB','GradeB');
Insert Into grade
Values(3,'Grade NNAC','GradeC');
Insert Into grade
Values(4,'Grade NNAD','GradeD');
Insert Into grade
Values(5,'Grade NNAE','GradeE');
Insert Into grade
Values(6,'Grade NNAF','GradeF');
Insert Into grade
Values(7,'Grade NNAG','GradeG');
Insert Into grade
Values(26,'Call Handler','Call Handler');
Insert Into grade
Values(8,'Paramedics Sept 1999','Paramedics');
Insert Into grade
Values(10,'NPNV - A','Grade A NPNV');
Insert Into grade
Values(11,'Grade B NPPV','Grade B NPPV');
Insert Into grade
Values(12,'Grade C NPRP','Grade C NPRP');
Insert Into grade
Values(13,'Grade D NPRV/NPSP','Grade D NPRV/NPSP');
Insert Into grade
Values(14,'Grade E NPSV','Grade E NPSV');
Insert Into grade
Values(15,'Grade F NPTP','Grade F NPTP');
Insert Into grade
Values(16,'Grade G NPTV','Grade G  NPTV');
Insert Into grade
Values(17,'Burnley Bank Grade A','BB GradeA');
Insert into grade
Values(18,'Burnley Bank Grade C','BB GradeC');
Insert Into grade
Values(19,'Burnley Bank Grade D','BB GradeD');
Insert Into grade
Values(20,'Burnley Bank Grade E','BB GradeE');
Insert Into grade
Values(22,'Paramedics Sept 2000','Paramedics Sept 2000');
Insert Into grade
Values(23,'Paramedics Sept 1999','Paramedics Sept 1999');
Insert Into grade
Values(24,'New Grade Long Desc','Grade G');
Insert Into grade
Values(25,'Doctor','Doctors');
Insert Into grade
Values(27,'New Grade Long Desc','OPD Validation');
Insert Into grade
Values(28,'Nurse Advisors',' NHS Direct');
Insert Into grade
Values(29,'Trust Prof','Trust Prof');

commit ;

Insert Into specialism
Values(4,'Venepuncture','Venepuncture');
Insert Into specialism
Values(5,'Medicine','Exp. in Gen. Medicine');
Insert Into specialism
Values(6,'Surgery','Gen. Surgery');
Insert Into specialism
Values(7,'Ortho','Orthopaedics');
Insert Into specialism
Values(8,'Theatres','Theatres');
Insert Into specialism
Values(9,'Elderly','Elderly Care');
Insert Into specialism
Values(10,'Gynae','Gynaecology');
Insert Into specialism
Values(11,'Opthalmology','Opthalmology');
Insert Into specialism
Values(12,'O.P.D.','Outpatients');
Insert Into specialism
Values(13,'C.C.U.','Coronary Care Unit');
Insert Into specialism
Values(14,'I.C.U.','Intensive Care Unit');
Insert Into specialism
Values(15,'Paeds','Paediatrics');
Insert Into specialism
Values(16,'Endo','Endoscopy');
Insert Into specialism
Values(17,'I.V. Cann','Intra Venous Cannulation');
Insert Into specialism
Values(18,'I.V. Admin','Intra Venous Drug Administration');
Insert Into specialism
Values(19,'Defib','Defibrillation');
Insert Into specialism
Values(22,'Sub-cut Cann','Sub-cutaneous Cannulation');
Insert Into specialism
Values(24,'Male Cath','Male Catheterisation');
Insert Into specialism
Values(25,'Intra Chemo','Intraventrical Chemotherapy');
Insert Into specialism
Values(29,'RSCN','Registered Sick Childrens Nurse');
Insert Into specialism
Values(30,'Catheterisation','Catheterisation');
Insert Into specialism
Values(31,'I V Additives','Intra Venous Additives');
Insert Into specialism
Values(35,'E.C.G.','E.C.G.');
Insert Into specialism
Values(36,'AIDS/HIV','Aids + Hiv');
Insert Into specialism
Values(37,'Anaesthetics','Anaesthetics');
Insert Into specialism
Values(38,'Burns','Burns + Plastics');
Insert Into specialism
Values(39,'Cardio','Cardiology');
Insert Into specialism
Values(40,'Cardio-thor','Cardio Thoracic');
Insert Into specialism
Values(41,'Comm','Community');
Insert Into specialism
Values(42,'Derm','Dermatology');
Insert Into specialism
Values(43,'ENT','Ears Nose Throat');
Insert Into specialism
Values(44,'Haematology','Haematology');
Insert Into specialism
Values(45,'ITU','ITU');
Insert Into specialism
Values(46,'InfDiseases','Infectious Diseases');
Insert Into specialism
Values(47,'Liver','Liver Unit');
Insert Into specialism
Values(48,'MCurie','Marie Curie');
Insert Into specialism
Values(49,'Menthealth','Mental Health');
Insert Into specialism
Values(50,'Midwifery','Midwifery');
Insert Into specialism
Values(51,'Neurology','Neurology');
Insert Into specialism
Values(52,'NNU','Neo Natal Unit');
Insert Into specialism
Values(53,'OccHealth','Occupational Health');
Insert Into specialism
Values(54,'Phlebotomy','Phlebotomy');
Insert Into specialism
Values(55,'Psychy','Psychiatry');
Insert Into specialism
Values(56,'RadTherpy','Radiotherapy');
Insert Into specialism
Values(57,'Rec','Recovery');
Insert Into specialism
Values(58,'Renaldia','Renal Dialysis');
Insert Into specialism
Values(59,'SCBU','Special care Baby Unit');
Insert Into specialism
Values(60,'Pallcare','Palliative Care');
Insert Into specialism
Values(61,'Tropical','Tropical');
Insert Into specialism
Values(62,'Xray','Xray');
Insert Into specialism
Values(63,'Spinal Inj','Spinal Injuries');
Insert Into specialism
Values(64,'Urology','Urology');
Insert Into specialism
Values(65,'Oncology','Oncology');
Insert Into specialism
Values(66,'Int Treatment','Intensive Treatment');
Insert Into specialism
Values(67,'High Dependenc','High Dependency Unit');
Insert Into specialism
Values(68,'Direct Booking','A Direct Booking');
Insert Into specialism
Values(69,'A + E','Accident + Emergency');
Insert Into specialism
Values(70,'RGN(Pt1)','RGN(Pt1)');
Insert Into specialism
Values(71,'SEN(pt2)','SEN(pt2)');
Insert Into specialism
Values(72,'RMN(Pt3)','RMN(Pt3)');
Insert Into specialism
Values(73,'SEN(M)(Pt4)','SEN(M)(Pt4)');
Insert Into specialism
Values(75,'RSCN(Pt8)','RSCN(Pt8)');
Insert Into specialism
Values(76,'RM(Pt10)','RM(Pt10)');
Insert Into specialism
Values(77,'RN(Pt12)','RN(Pt12)');
Insert Into specialism
Values(78,'EN(pt7)','EN(pt7)');
Insert Into specialism
Values(79,'Burn','Burnley');
Insert Into specialism
Values(80,'Surgical','surgical');
Insert Into specialism
Values(81,'Med','Medical');
Insert Into specialism
Values(82,'Doctor','Doctor Locum Bank');

commit ;

Insert Into Nurses
Values(3,'David','Beedasy','30 Castle View','Camberwick Green','Toytown','Trumptonshire','ZF2 7HZ','ZZI1890E','31-Jan-01','08-Aug-50',1);
Insert Into Nurses
Values(4,'Julie','Machin','7 Greenwood Road','Camberwick Green','Toytown','Trumptonshire','ZF1 4QH','ZZD0085E','31-May-03','23-Jul-56',6);
Insert Into Nurses
Values(6,'Wendy','Fall','164 Gordon Place','Camberwick Green','Toytown','Trumptonshire','ZF9 2ES','ZZI6430E','31-Aug-03','11-Jan-73',4);
Insert Into Nurses
Values(8,'Julie','Clayton','15 The Oval','Camberwick Green','Toytown','Trumptonshire','ZF4 2NX','ZZA0320E','31-Mar-03','02-Jan-69',1);
Insert Into Nurses
Values(9,'Angela','Smith','6 Hereward Court','Camberwick Green','Toytown','Trumptonshire','ZN12 2HS','ZZ80742E','31-Dec-00','25-Dec-59',1);
Insert Into Nurses
Values(11,'Edward Laurence','Dixon','2 Turnflatt Cottages','Camberwick Green','Toytown','Trumptonshire','ZF4 1QG','ZZJ2044E','31-Jan-03','16-Oct-65',1);
Insert Into Nurses
Values(15,'Hazel','Poppleton','28 Belle Green Close','Camberwick Green','Toytown','Trumptonshire','Z72 8SN','ZZY0916E','31-Aug-02','19-Mar-58',5);
Insert Into Nurses
Values(20,'Lesley Ann','Tomlinson','40 Darkfield Lane','Camberwick Green','Toytown','Trumptonshire','ZF8 2PJ','ZZE1121E','30-Jun-02','09-Dec-63',4);
Insert Into Nurses
Values(21,'Gillian','Carlile','36 Linden Close','Camberwick Green','Toytown','Trumptonshire','ZF8 4EH','ZZU6067E','31-Dec-02','10-Dec-39',4);
Insert Into Nurses
Values(22,'Helen','Twine','67 Orchard Drive','Camberwick Green','Toytown','Trumptonshire','ZF7 7DS','ZZU7080E','30-Nov-00','01-Jul-55',5);
Insert Into Nurses
Values(23,'Nicola','Camplin','6 Highfield Place','Camberwick Green','Toytown','Trumptonshire','ZF7 6AJ','ZZE2257E','31-Aug-03','05-Nov-63',5);
Insert Into Nurses
Values(24,'Linda Janet','Harrison','102 Northgate','Camberwick Green','Toytown','Trumptonshire','ZF8 1EJ','ZZF0954E','30-Sep-01','23-May-47',1);
Insert Into Nurses
Values(25,'Valerie Dawn','Hawkswell','117 Northfield Drive','Camberwick Green','Toytown','Trumptonshire','ZF8 2DL','ZZE1143E','31-Oct-03','24-Nov-66',5);
Insert Into Nurses
Values(28,'Julie Diane','Naylor','62 Churchbalk Lane','Camberwick Green','Toytown','Trumptonshire','ZF8 2QJ','ZZC1891E','31-May-02','21-Nov-62',1);
Insert Into Nurses
Values(30,'Suzanne','Bourke','17 Ings Holt','Camberwick Green','Toytown','Trumptonshire','ZF9 3SF','ZZI0598E','31-Aug-01','19-Apr-62',1);
Insert Into Nurses
Values(39,'Angela Marie','Carter','69 Upper Lane','Camberwick Green','Toytown','Trumptonshire','ZF4 4NF','ZZK0540E','30-Nov-02','08-Oct-61',1);
Insert Into Nurses
Values(40,'Virginia','Smart','5 School Road','Camberwick Green','Toytown','Trumptonshire','ZF8 2AH','ZZE0090E','30-Nov-00','03-Mar-58',1);
Insert Into Nurses
Values(41,'Suzanne','Asquith','29 Priory Ridge','Camberwick Green','Toytown','Trumptonshire','ZF4 1TF','ZZB2362E','31-Oct-00','21-May-69',4);
Insert Into Nurses
Values(43,'Wendy','England','11 Walnut Drive','Camberwick Green','Toytown','Trumptonshire','ZF8 4NR','ZZ10558E','31-Jan-01','14-Jul-60',4);
Insert Into Nurses
Values(44,'Richard George','Berry','29 Priory Ridge','Camberwick Green','Toytown','Trumptonshire','ZF4 1TF','ZZJ0441E','31-Dec-01','16-Apr-68',1);
Insert Into Nurses
Values(45,'Brenda','Garnett','8 Pinfold Close','Camberwick Green','Toytown','Trumptonshire','ZF11 8NR','ZZD1669E','30-Nov-00','09-Jan-46',5);
Insert Into Nurses
Values(46,'Jennifer','Knight','The Lilacs','Camberwick Green','Toytown','Trumptonshire','ZF4 5DY','ZZF0896E','31-Oct-03','14-Jan-46',5);
Insert Into Nurses
Values(47,'Deborah','Owens','38 Pearson Street','Camberwick Green','Toytown','Trumptonshire','ZF6 2QT','ZZI1001E','31-Dec-00','14-Jun-64',1);
Insert Into Nurses
Values(49,'Karen','Proud','20 Woodleigh Crescent','Camberwick Green','Toytown','Trumptonshire','ZF7 7JG','ZZK0975E','31-Dec-01','03-Nov-62',6);
Insert Into Nurses
Values(50,'Margaret','Norris','144 Wrenthorpe Road','Camberwick Green','Toytown','Trumptonshire','ZF2 0HR','ZZG0023E2','30-Jun-03','23-Jan-47',4);
Insert Into Nurses
Values(51,'Joanne','Russell','36 Aldham Crescent','Camberwick Green','Toytown','Trumptonshire','Z73 8ES','ZZY0493E','30-Apr-02','29-May-68',5);
Insert Into Nurses
Values(52,'Megan','Proud','4 Flounders Hill','Camberwick Green','Toytown','Trumptonshire','ZF7 7 HT','ZZE1113E','31-May-03','14-Apr-58',4);
Insert Into Nurses
Values(53,'Glenda','Nicholls','33 Meadow Croft','Camberwick Green','Toytown','Trumptonshire','ZF9 4HS','ZZU3992E','30-Nov-00','12-Sep-56',1);
Insert Into Nurses
Values(56,'Rosalind Jane','Fletcher','27 Field Lane','Camberwick Green','Toytown','Trumptonshire','Z6 9DZ','ZZJ0585E','31-Dec-00','20-Oct-65',1);
Insert Into Nurses
Values(57,'Jane','Beal','7 Pennine Road','Camberwick Green','Toytown','Trumptonshire','ZF12 7AW','ZZC0079E','30-Jun-02','27-Jul-58',3);
Insert Into Nurses
Values(58,'Tracey','Potter','19 Croft Close','Camberwick Green','Toytown','Trumptonshire','Z75 6FN','ZZB0475E','31-May-01','13-Jun-71',1);
Insert Into Nurses
Values(60,'Gillian','Cook','40 Speak Close','Camberwick Green','Toytown','Trumptonshire','ZF1 4TG','ZZF0774E','31-Dec-02','04-May-65',1);
Insert Into Nurses
Values(61,'Nicola','Ellis','39 Lime Pit Lane','Camberwick Green','Toytown','Trumptonshire','ZF3 4DH','ZZG1564E','30-Sep-02','01-Sep-66',1);
Insert Into Nurses
Values(62,'Anne','Auty','14 Milnthorpe Crescent','Camberwick Green','Toytown','Trumptonshire','ZF2 6BE','ZZU0717E','30-Nov-01','06-Apr-56',1);
Insert Into Nurses
Values(63,'Lee Ann','Metcalfe','12 Birkwood Road','Camberwick Green','Toytown','Trumptonshire','ZF6 2NL','ZZB0598E','30-Apr-02','18-Jun-63',5);
Insert Into Nurses
Values(64,'Melanie','Shotter','20 Sycamore Copse','Camberwick Green','Toytown','Trumptonshire','ZF2 8DG','ZZF0790E','31-Aug-02','21-Feb-65',6);
Insert Into Nurses
Values(67,'Vikki','Green','25 Common Lane','Camberwick Green','Toytown','Trumptonshire','ZF3 2EP','ZZI14757E','30-Sep-01','17-Jul-74',1);
Insert Into Nurses
Values(68,'Heidi','Odell','5 St Catherine Street','Camberwick Green','Toytown','Trumptonshire','ZF1 5BW','ZZK0047E','30-Nov-02','06-Mar-74',5);
Insert Into Nurses
Values(69,'Patricia','Douglas','529 Doncaster Road','Camberwick Green','Toytown','Trumptonshire','ZF4 1LP','ZZF1543E','30-Sep-03','15-Mar-49',1);
Insert Into Nurses
Values(74,'Janet Elizabeth','Hargreaves','32 Dickens Drive','Camberwick Green','Toytown','Trumptonshire','ZF10 3PI','ZZY2279E','31-Aug-01','15-Nov-62',6);
Insert Into Nurses
Values(77,'Diane','Green','23 Wilson Drive','Camberwick Green','Toytown','Trumptonshire','ZF1 3DN','ZZJ0947E','31-Dec-02','01-May-69',4);
Insert Into Nurses
Values(78,'Linda','Wright','17 Turner Drive','Camberwick Green','Toytown','Trumptonshire','ZF3 1UD','ZZY1923E','31-May-01','03-Mar-58',4);
Insert Into Nurses
Values(81,'Helen','Eccles','8 Elmwood Avenue','Camberwick Green','Toytown','Trumptonshire','ZF2 6LS','ZZB0716E','30-Nov-01','14-Jan-67',1);
Insert Into Nurses
Values(82,'Julie','Edwards','25 Westgate Court','Camberwick Green','Toytown','Trumptonshire','ZF3 3NL','ZZI1337E','31-Dec-02','14-May-65',5);
Insert Into Nurses
Values(83,'Lynne','Wood','1 Manor View','Camberwick Green','Toytown','Trumptonshire','Z72 8NQ','ZZE2437E','31-Jul-01','01-Dec-62',5);
Insert Into Nurses
Values(86,'Gail','Wales','3 The Orchard','Camberwick Green','Toytown','Trumptonshire','ZF2 0LH','ZZL0591E','31-Dec-02','25-Sep-44',4);
Insert Into Nurses
Values(90,'Michelle Lillay','Hinkley','19 Great Bank Road','Camberwick Green','Toytown','Trumptonshire','Z65 3BT','ZZC0076E','31-Jul-01','08-Aug-66',5);
Insert Into Nurses
Values(91,'Christina','Rodgers','3 Greatfield Drive','Camberwick Green','Toytown','Trumptonshire','Z6 0SA','ZZH1875E','30-Nov-00','02-Jul-58',1);
Insert Into Nurses
Values(93,'Maureen','Green','14 Longroyd Farm','Camberwick Green','Toytown','Trumptonshire','ZF4 4QB','ZZE2435E','30-Nov-01','01-Aug-37',1);
Insert Into Nurses
Values(94,'Jill Elizabeth','Robinson','7 Hill Top Green','Camberwick Green','Toytown','Trumptonshire','ZF3 1HS','ZZU0736E','31-Dec-02','29-Nov-49',7);

commit ;

Insert Into NurseSpecial
Values(3,45);
Insert Into NurseSpecial
Values(4,45);
Insert Into NurseSpecial
Values(6,45);
Insert Into NurseSpecial
Values(8,45);
Insert Into NurseSpecial
Values(9,45);
Insert Into NurseSpecial
Values(11,5);
Insert Into NurseSpecial
Values(15,5);
Insert Into NurseSpecial
Values(20,5);
Insert Into NurseSpecial
Values(21,5);
Insert Into NurseSpecial
Values(22,5);
Insert Into NurseSpecial
Values(23,5);
Insert Into NurseSpecial
Values(24,5);
Insert Into NurseSpecial
Values(25,5);
Insert Into NurseSpecial
Values(28,5);
Insert Into NurseSpecial
Values(30,5);
Insert Into NurseSpecial
Values(39,5);
Insert Into NurseSpecial
Values(40,5);
Insert Into NurseSpecial
Values(41,5);
Insert Into NurseSpecial
Values(43,5);
Insert Into NurseSpecial
Values(44,5);
Insert Into NurseSpecial
Values(45,5);
Insert Into NurseSpecial
Values(46,5);
Insert Into NurseSpecial
Values(47,5);
Insert Into NurseSpecial
Values(49,5);
Insert Into NurseSpecial
Values(50,5);
Insert Into NurseSpecial
Values(51,5);
Insert Into NurseSpecial
Values(52,5);
Insert Into NurseSpecial
Values(53,5);
Insert Into NurseSpecial
Values(56,6);
Insert Into NurseSpecial
Values(57,6);
Insert Into NurseSpecial
Values(58,6);
Insert Into NurseSpecial
Values(60,6);
Insert Into NurseSpecial
Values(61,6);
Insert Into NurseSpecial
Values(62,6);
Insert Into NurseSpecial
Values(63,6);
Insert Into NurseSpecial
Values(64,6);
Insert Into NurseSpecial
Values(67,6);
Insert Into NurseSpecial
Values(68,6);
Insert Into NurseSpecial
Values(69,6);
Insert Into NurseSpecial
Values(74,6);
Insert Into NurseSpecial
Values(77,6);
Insert Into NurseSpecial
Values(78,6);
Insert Into NurseSpecial
Values(81,6);
Insert Into NurseSpecial
Values(82,6);
Insert Into NurseSpecial
Values(83,6);
Insert Into NurseSpecial
Values(86,6);
Insert Into NurseSpecial
Values(90,6);
Insert Into NurseSpecial
Values(91,6);
Insert Into NurseSpecial
Values(93,6);
Insert Into NurseSpecial
Values(94,6);
Insert Into NurseSpecial
Values(86,5);
Insert Into NurseSpecial
Values(90,5);
Insert Into NurseSpecial
Values(91,5);
Insert Into NurseSpecial
Values(93,5);
Insert Into NurseSpecial
Values(94,5);

SET foreign_key_checks = 1;
