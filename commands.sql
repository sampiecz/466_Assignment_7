###########################################################
# CSCI 466 - Assignment 7 - Spring 2018                   #
#                                                         #
# Progammer: Sam Piecz                                    #
# Z-ID: Z1732715                                          #
# Section: 3                                              #
# TA: Rajarshi Sen                                        #
# Date Due: March 30, 2018                                # 
# Purpose: SQL queries from multiple tables               # 
###########################################################

# 1
DROP VIEW showPetAndOwner;
DROP TABLE Pet;
DROP TABLE Owner;

# 2
CREATE TABLE Owner ( ownerId integer AUTO_INCREMENT, firstName char(20), lastName  char(20), primary key (ownerId) );

# 3
INSERT INTO Owner (firstName, lastName) VALUES('Sam', 'Piecz');
INSERT INTO Owner (firstName, lastName) VALUES('Juan', 'Gomez');
INSERT INTO Owner (firstName, lastName) VALUES('Test', 'Mang');
INSERT INTO Owner (firstName, lastName) VALUES('Another', 'One');
INSERT INTO Owner (firstName, lastName) VALUES('Please', 'Stop');

# 4 
SELECT * FROM Owner;

# 5
CREATE TABLE Pet ( petId integer AUTO_INCREMENT, petName char(30), petDOB  char(30), ownerId int, PRIMARY KEY (petId), FOREIGN KEY (ownerId) REFERENCES Owner (ownerId) );

#6
INSERT INTO Pet ( petName, petDOB, ownerId ) VALUES ( 'Spot', '01/01/01', '1' );
INSERT INTO Pet ( petName, petDOB, ownerId ) VALUES ( 'Gojira', '02/02/12', '1' );
INSERT INTO Pet ( petName, petDOB, ownerId ) VALUES ( 'Pickles', '03/03/13', '2' );
INSERT INTO Pet ( petName, petDOB, ownerId ) VALUES ( 'Bootlicker', '04/04/14', '3' );
INSERT INTO Pet ( petName, petDOB, ownerId ) VALUES ( 'Runningoutofnames', '05/05/15', '4' );

# 7
SELECT * FROM Pet;

# 8
ALTER TABLE Pet ADD ( type char(30) );

# 9
UPDATE Pet SET type='animal';

# 10
ALTER TABLE Pet MODIFY petDOB DATE;

# 11
SELECT * FROM Pet;

# 12
CREATE VIEW showPetAndOwner AS SELECT p.petName, o.firstName, o.lastName FROM Pet p JOIN Owner o WHERE p.ownerId = o.ownerId; 

# 13
SELECT * FROM showPetAndOwner;
