-- Inserting sample data into the Voters table
INSERT INTO voters VALUES ('John', 'A', 'Doe', 11111, '123 Main St', 'M', TO_DATE('1980-01-15', 'YYYY-MM-DD'));
INSERT INTO voters VALUES ('Alice', 'M', 'Johnson', 33333, '456 Oak St', 'F', TO_DATE('1992-08-20', 'YYYY-MM-DD'));
INSERT INTO voters VALUES ('Bob', 'C', 'Williams', 44444, '789 Pine St', 'M', TO_DATE('1985-03-10', 'YYYY-MM-DD'));
INSERT INTO voters VALUES ('Eva', 'R', 'Garcia', 77777, '101 Maple Ave', 'F', TO_DATE('1989-06-25', 'YYYY-MM-DD'));
INSERT INTO voters VALUES ('Frank', 'P', 'Martinez', 88888, '202 Cedar St', 'M', TO_DATE('1976-02-12', 'YYYY-MM-DD'));

-- Inserting sample data into the Candidates table
INSERT INTO candidates VALUES ('Jane', 'B', 'Smith', 22222, 'Democratic Party', 'F', TO_DATE('1975-05-22', 'YYYY-MM-DD'));
INSERT INTO candidates VALUES ('David', 'S', 'Jones', 55555, 'Republican Party', 'M', TO_DATE('1982-11-28', 'YYYY-MM-DD'));
INSERT INTO candidates VALUES ('Emily', 'D', 'Miller', 66666, 'Independent', 'F', TO_DATE('1978-07-15', 'YYYY-MM-DD'));
INSERT INTO candidates VALUES ('Grace', 'W', 'Harris', 99999, 'Green Party', 'F', TO_DATE('1980-09-18', 'YYYY-MM-DD'));
INSERT INTO candidates VALUES ('Henry', 'K', 'Brown', 12345, 'Libertarian Party', 'M', TO_DATE('1984-04-30', 'YYYY-MM-DD'));

-- Inserting sample data into the Election Events table
INSERT INTO election_events VALUES (1, TO_DATE('2024-1-01', 'YYYY-MM-DD'), TO_DATE('2024-11-10', 'YYYY-MM-DD'), 'General Election', 'National Election');
INSERT INTO election_events VALUES (2, TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 'Local Election', 'City Council Election');
INSERT INTO election_events VALUES (3, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'State Election', 'Governor Election');

-- Inserting sample data into the Votes table
INSERT INTO votes VALUES (TO_DATE('2023-11-05 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'City Hall', 11111, 22222, 1);
INSERT INTO votes VALUES (TO_DATE('2023-12-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Community Center', 33333, 55555, 2);
INSERT INTO votes VALUES (TO_DATE('2023-12-12 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Library', 44444, 66666, 2);
INSERT INTO votes VALUES (TO_DATE('2024-04-10 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Town Hall', 77777, 99999, 3);
INSERT INTO votes VALUES (TO_DATE('2024-04-12 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Community Center', 88888, 12345, 3);

-- Inserting sample data into the Event Locations table
INSERT INTO event_locations VALUES (1, 'City Hall');
INSERT INTO event_locations VALUES (2, 'Community Center');
INSERT INTO event_locations VALUES (2, 'Library');
INSERT INTO event_locations VALUES (3, 'Town Hall');
INSERT INTO event_locations VALUES (3, 'Community Center');

-- Inserting sample data into the Registers table
INSERT INTO registers VALUES (1, 11111, 1);
INSERT INTO registers VALUES (2, 33333, 0);
INSERT INTO registers VALUES (2, 44444, 1);
INSERT INTO registers VALUES (3, 77777, 1);
INSERT INTO registers VALUES (3, 88888, 0);

-- Inserting sample data into the Nominations table
INSERT INTO nominations VALUES (1, 22222, 'Dove', 1);
INSERT INTO nominations VALUES (2, 55555, 'Elephant', 2);
INSERT INTO nominations VALUES (2, 66666, 'Sunflower', 3);
INSERT INTO nominations VALUES (3, 99999, 'Tree', 4);
INSERT INTO nominations VALUES (3, 12345, 'Mountain', 5);

