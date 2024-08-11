CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);

CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    license_plate VARCHAR(20) UNIQUE,
    vehicle_type VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE ParkingSpots (
    spot_id INT PRIMARY KEY AUTO_INCREMENT,
    spot_number VARCHAR(10) UNIQUE,
    spot_type VARCHAR(50),
    is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    vehicle_id INT,
    spot_id INT,
    entry_time DATETIME,
    exit_time DATETIME,
    amount_paid DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),
    FOREIGN KEY (spot_id) REFERENCES ParkingSpots(spot_id)
);
