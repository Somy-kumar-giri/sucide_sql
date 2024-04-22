create database Suicide_data;
use Suicide_data;
CREATE TABLE StudentDemographics (
    State VARCHAR(100),
    Year INT,
    Gender VARCHAR(10),
    AgeGroup VARCHAR(10),
    Total INT,
    PRIMARY KEY (State, Year, Gender, AgeGroup)
);
INSERT INTO StudentDemographics (State, Year, Gender, AgeGroup, Total)
VALUES
('A & N Islands', 2001, 'Female', '0-14', 100),
('A & N Islands', 2001, 'Female', '15-29', 150),
('A & N Islands', 2001, 'Male', '0-14', 120),
('A & N Islands', 2001, 'Male', '15-29', 180),
('A & N Islands', 2002, 'Female', '0-14', 110),
('A & N Islands', 2002, 'Female', '15-29', 160),
('A & N Islands', 2002, 'Male', '0-14', 130),
('A & N Islands', 2002, 'Male', '15-29', 190),
('Delhi', 2001, 'Female', '0-14', 90),
('Delhi', 2001, 'Female', '15-29', 140),
('Delhi', 2001, 'Male', '0-14', 110),
('Delhi', 2001, 'Male', '15-29', 170),
('A & N Islands', 2003, 'Female', '0-14', 95),
('A & N Islands', 2003, 'Female', '15-29', 155),
('A & N Islands', 2003, 'Male', '0-14', 125),
('A & N Islands', 2003, 'Male', '15-29', 185),
('Delhi', 2002, 'Female', '0-14', 100),
('Delhi', 2002, 'Female', '15-29', 150),
('Delhi', 2002, 'Male', '0-14', 120),
('Delhi', 2002, 'Male', '15-29', 180),
('Maharashtra', 2001, 'Female', '0-14', 85),
('Maharashtra', 2001, 'Female', '15-29', 145),
('Maharashtra', 2001, 'Male', '0-14', 110),
('Maharashtra', 2001, 'Male', '15-29', 170),
('Maharashtra', 2002, 'Female', '0-14', 95),
('Maharashtra', 2002, 'Female', '15-29', 155),
('Maharashtra', 2002, 'Male', '0-14', 125),
('Maharashtra', 2002, 'Male', '15-29', 185),
('Gujarat', 2001, 'Female', '0-14', 100),
('Gujarat', 2001, 'Female', '15-29', 160),
('Gujarat', 2001, 'Male', '0-14', 130),
('Gujarat', 2001, 'Male', '15-29', 190),
('Gujarat', 2002, 'Female', '0-14', 105),
('Gujarat', 2002, 'Female', '15-29', 165),
('Gujarat', 2002, 'Male', '0-14', 135),
('Gujarat', 2002, 'Male', '15-29', 195),
('Rajasthan', 2001, 'Female', '0-14', 95),
('Rajasthan', 2001, 'Female', '15-29', 155),
('Rajasthan', 2001, 'Male', '0-14', 125),
('Rajasthan', 2001, 'Male', '15-29', 185),
('Rajasthan', 2002, 'Female', '0-14', 100),
('Rajasthan', 2002, 'Female', '15-29', 160);

CREATE TABLE SuicideCauses (
    State VARCHAR(100),
    Year INT,
    TypeCode VARCHAR(100),
    Type VARCHAR(100),
    Gender VARCHAR(10),
    AgeGroup VARCHAR(10),
    Total INT,
    FOREIGN KEY (State, Year, Gender, AgeGroup) REFERENCES StudentDemographics(State, Year, Gender, AgeGroup)
);

INSERT INTO SuicideCauses (State, Year, TypeCode, Type, Gender, AgeGroup, Total)
VALUES
('A & N Islands', 2001, 'Causes', 'Insanity/Mental Illness', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Love Affairs', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Fall in Social Reputation', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Dowry Dispute', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Ideological Causes/Hero Worshipping', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Illegitimate Pregnancy', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Failure in Examination', 'Male', '0-14', 1),
('A & N Islands', 2001, 'Causes', 'Bankruptcy or Sudden change in Economic', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Insanity/Mental Illness', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Divorce', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Suspected/Illicit Relation', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Property Dispute', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Unemployment', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Poverty', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Family Problems', 'Male', '0-14', 0),
('A & N Islands', 2001, 'Causes', 'Cancellation/Non-Settlement of Marriage', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Causes Not known', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Paralysis', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Physical Abuse (Rape/Incest Etc.)', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Professional/Career Problem', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Divorce', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Suspected/Illicit Relation', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Cancer', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Not having Children(Barrenness/Impotency', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Causes Not known', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Paralysis', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Property Dispute', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Unemployment', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Poverty', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Family Problems', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Illness (Aids/STD)', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Drug Abuse/Addiction', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Other Prolonged Illness', 'Male', '15-29', 1),
('A & N Islands', 2001, 'Causes', 'Death of Dear Person', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Other Causes (Please Specify)', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Failure in Examination', 'Male', '15-29', 1),
('A & N Islands', 2001, 'Causes', 'Bankruptcy or Sudden change in Economic', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Insanity/Mental Illness', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Love Affairs', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Fall in Social Reputation', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Dowry Dispute', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Ideological Causes/Hero Worshipping', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Illegitimate Pregnancy', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Divorce', 'Male', '15-29', 0),
('A & N Islands', 2001, 'Causes', 'Drug Abuse/Addiction', 'Male', '15-29', 0);

select * from StudentDemographics;
select * from SuicideCauses;

