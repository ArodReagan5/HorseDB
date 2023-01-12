
USE Horse ;
CREATE TABLE HorseInfo
(
HorseID INT NOT NULL,
BreedID INT,
OwnerID INT,
VetID INT,
TransactionID INT,
SireID INT,
DamID INT,
TrainerID INT,
FarrierID INT,
RegisteredName VARCHAR(255),
NickName VARCHAR(255),
Age INT,
Birthday DATE,
Sex ENUM('M','F'),
Color VARCHAR(255),
HeightHands INT,
Weight INT,
PRIMARY KEY (HorseID),
FOREIGN KEY (BreedID) REFERENCES BreedID(BreedID),
FOREIGN KEY (OwnerID) REFERENCES OwnerID(OwnerID),
FOREIGN KEY (VetID) REFERENCES VetID(VetID),
FOREIGN KEY (TransactionID) REFERENCES TransactionID(TransactionID),
FOREIGN KEY (SireID) REFERENCES SireID(SireID),
FOREIGN KEY (DamID) REFERENCES DamID(DamID),
FOREIGN KEY (TrainerID) REFERENCES TrainerID(TrainerID),
FOREIGN KEY (FarrierID) REFERENCES FarrierID(FarrierID)
);

CREATE TABLE BreedID
(
BreedID INT NOT NULL,
BreedName VARCHAR(255),
Registration BLOB,
PRIMARY KEY (BreedID)
); 

CREATE TABLE OwnerID
(
OwnerID INT NOT NULL,
LastName VARCHAR(255),
FirstName VARCHAR(255),
FarmName VARCHAR(255),
PhoneNumber INT(11),
StreetAddress1 VARCHAR(255),
StreetAddress2 VARCHAR(255),
City VARCHAR(255),
StateAbbreviation VARCHAR(2),
PRIMARY KEY (OwnerID)
);

CREATE TABLE VetInfo
(
VetID INT NOT NULL,
FeedingRegimineID INT,
BoneRecordsID INT,
CoatManeID INT,
HoofID INT,
Vaccination_Records BLOB,
LastName VARCHAR(255),
FirstName VARCHAR(255),
ClinicName VARCHAR(255),
StreetAddress1 VARCHAR(255),
StreetAddress2 VARCHAR(255),
City VARCHAR(255),
StateAbbreviation VARCHAR(2),
VaccinationRecords BLOB,
PRIMARY KEY (VetID),
FOREIGN KEY (FeegingRegimineID) REFERENCES FeedingRegimineID(FeedingRegimineID),
FOREIGN KEY (BoneRecordsID) REFERENCES BoneRecordsID(BoneRecordsID),
FOREIGN KEY (CoatManeID) REFERENCES CoatManeID(CoatManeID),
FOREIGN KEY (HoofID) REFERENCES HoofID(HoofID)
); 

CREATE TABLE TransactionID
(
TransactionID INT NOT NULL,
SellerID INT,
BuyerID INT,
Transaction_date DATE,
Coggins BLOB,
Certificate_transaction BLOB,
Location VARCHAR(255),
PRIMARY KEY (TransactionID),
FOREIGN KEY (SellerID) REFERENCES SellerID(SellerID),
FOREIGN KEY (BuyerID) REFERENCES BuyerID(BuyerId)
);

CREATE TABLE SireID 
(
SireID INT NOT NULL,
Registered_name VARCHAR(255),
Certificate BLOB,
Owner_name VARCHAR(255),
PRIMARY KEY (SireID)
);

CREATE TABLE DamID
(
DamID INT NOT NULL,
Registered_name VARCHAR(255),
Certificate BLOB,
Owner_name VARCHAR(255),
PRIMARY KEY (DamID)
);

CREATE TABLE TrainerID
(
TrainerID INT NOT NULL,
first_name VARCHAR(255),
last_name VARCHAR(255),
Certification BLOB,
PRIMARY KEY (TrainerID)
);

CREATE TABLE FarrierID
(
FarrierID INT NOT NULL,
first_name VARCHAR(255),
last_name VARCHAR(255),
Avg_price INT,
StreetAddress1 VARCHAR(255),
StreetAddress2 VARCHAR(255),
PhoneNumber INT(11),
PRIMARY KEY (FarrierID)
);

CREATE TABLE FeedingRegimineID
(
FeedingRegimineID INT NOT NULL,
NutrientBreakdownID INT,
Scoops_per_day INT,
HayType VARCHAR(255),
DietaryNote VARCHAR(255),
PRIMARY KEY (FeedingRegimineID),
FOREIGN KEY (NutrientBreakdownID) REFERENCES NutrientBreakdownID(NutrientBreakdownID)
);

CREATE TABLE BoneRecordsID
(
BoneRecordsID INT NOT NULL,
BoneRecordsNotes VARCHAR(750),
XRAY BLOB,
Fractures Enum('T','F'),
Displacement Enum('T','F'),
ToothDecay Enum('T','F'),
Diastema Enum('T','F'),
LooseTeeth Enum('T','F'),
MissingCheek Enum('T','F'),
PRIMARY KEY (BoneRecordsID)
);

CREATE TABLE CoatManeID
(
CoatManeID INT NOT NULL,
Mange Enum('T','F'),
RainRot Enum('T','F'),
HairLoss Enum('T','F'),
DeadEnds Enum('T','F'),
OilTreatment Enum('T','F'),
Cleanser Enum('T','F'),
CleanserNeed VARCHAR(255),
FlyTreatment Enum('T','F'),
PRIMARY KEY (CoatManeID)
);

CREATE TABLE HoofID
(
HoofID INT NOT NULL,
Thrush Enum('T','F'),
Whiteline Enum('T','F'),
Shoes Enum('T','F'),
Navicular Enum('T','F'),
Keratoma Enum('T','F'),
Fractures Enum('T','F'),
FractureNotes VARCHAR(255),
Cysts Enum('T','F'),
Cankers Enum('T','F'),
Punctures Enum('T','F'),
PunctureNotes VARCHAR(255),
Pyramidal Enum('T','F'),
PedalOsteitis Enum('T','F'),
Laminitis Enum('T','F'),
Corns Enum('T','F'),
SeedyToe Enum('T','F'),
SheeredHeels Enum('T','F'),
PRIMARY KEY (HoofID)
);

CREATE TABLE SellerID
(
SellerID INT NOT NULL,
first_name VARCHAR(255),
last_name VARCHAR(255),
StreetAddress1 VARCHAR(255),
StreetAddress2 VARCHAR(255),
PhoneNumber INT(11),
PRIMARY KEY (SellerID)
);

CREATE TABLE BuyerID
(
BuyerID INT NOT NULL,
first_name VARCHAR(255),
last_name VARCHAR(255),
StreetAddress1 VARCHAR(255),
StreetAddress2 VARCHAR(255),
PhoneNumber INT(11),
PRIMARY KEY (BuyerID)
);


CREATE TABLE NutrientBreakdownID
( 
NutrienBreakdownID INT NOT NULL,
CrudeProtein INT,
Lysine INT,
Methionine_Cystine INT,
Threoinine INT,
CrudeFat INT,
CrudeFiber INT,
Calcium INT,
Phosphorus INT,
Potassium INT,
Magnesium INT,
Manganese INT,
Cobalt INT,
Iron INT,
Idodine INT,
Zinc INT,
Copper INT,
Selenium INT,
Salt INT,
VitaminA INT,
VitaminD INT,
VitaminE INT,
VitaminC INT,
Biotin INT,
Thiamine INT,
Riboflavin INT,
Omega6 INT,
Omega3 INT,
Saccharomyces_cerevisiae INT,
Microorganisms INT,
Cellulase INT,
Protease INT,
Lipase INT,
Hemicullulase INT,
Phytase INT,
PRIMARY KEY (NutrienBreakdownID)
);




SELECT 
    'mysql' dbms,
    t.TABLE_SCHEMA,
    t.TABLE_NAME,
    c.COLUMN_NAME,
    c.ORDINAL_POSITION,
    c.DATA_TYPE,
    c.CHARACTER_MAXIMUM_LENGTH,
    n.CONSTRAINT_TYPE,
    k.REFERENCED_TABLE_SCHEMA,
    k.REFERENCED_TABLE_NAME,
    k.REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.TABLES t
        LEFT JOIN
    INFORMATION_SCHEMA.COLUMNS c ON t.TABLE_SCHEMA = c.TABLE_SCHEMA
        AND t.TABLE_NAME = c.TABLE_NAME
        LEFT JOIN
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE k ON c.TABLE_SCHEMA = k.TABLE_SCHEMA
        AND c.TABLE_NAME = k.TABLE_NAME
        AND c.COLUMN_NAME = k.COLUMN_NAME
        LEFT JOIN
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS n ON k.CONSTRAINT_SCHEMA = n.CONSTRAINT_SCHEMA
        AND k.CONSTRAINT_NAME = n.CONSTRAINT_NAME
        AND k.TABLE_SCHEMA = n.TABLE_SCHEMA
        AND k.TABLE_NAME = n.TABLE_NAME
WHERE
    t.TABLE_TYPE = 'BASE TABLE'
        AND t.TABLE_SCHEMA NOT IN ('INFORMATION_SCHEMA' , 'mysql', 'performance_schema');

use horse;
select * from horseinfo; 


# the ID for the feeding regime is the address for Odom Livestock 
# the Id for Owner Ash young is his name in the alphabet 
#Breeds 
#B001 Appaloosa
#B002 Morgan
#B003 Quarter Horse
#B005 Blue Roan 
#B006 Arabian 
#B007 Friesian

#1001 Prince
#1002 Comet
#1003 Sitting Bull 
#1004 Pongo 
#1005 Princess 
#1006 Derby
#1007 Priceless 
#1008 Reign 
#1009 Felicity 
#1010 Rudolph
#1011 Kickin’ Up Ashes 
#1012 Todd 
#1013 Montana 
#1014 Major 
#1015 Wayne 
#1016 Genie 
#1017 Henry 
#1018 Anne 
#1019 Angus 