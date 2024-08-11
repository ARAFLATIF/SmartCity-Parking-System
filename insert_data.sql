-- Inserting sample users
INSERT INTO Users (name, email, phone_number)
VALUES ('John Doe', 'john@example.com', '123-456-7890'),
       ('Jane Smith', 'jane@example.com', '987-654-3210');

-- Inserting sample vehicles
INSERT INTO Vehicles (user_id, license_plate, vehicle_type)
VALUES (1, 'ABC123', 'Sedan'),
       (2, 'XYZ987', 'SUV');

-- Inserting sample parking spots
INSERT INTO ParkingSpots (spot_number, spot_type)
VALUES ('P1', 'Compact'),
       ('P2', 'SUV');

-- Inserting a sample transaction
INSERT INTO Transactions (user_id, vehicle_id, spot_id, entry_time, exit_time, amount_paid)
VALUES (1, 1, 1, '2024-08-10 10:00:00', '2024-08-10 12:00:00', 10.00);
