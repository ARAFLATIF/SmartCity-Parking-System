-- Stored procedure to book a parking spot
DELIMITER //
CREATE PROCEDURE BookSpot(IN userID INT, IN vehicleID INT, IN spotID INT)
BEGIN
    IF (SELECT is_available FROM ParkingSpots WHERE spot_id = spotID) THEN
        INSERT INTO Transactions (user_id, vehicle_id, spot_id, entry_time)
        VALUES (userID, vehicleID, spotID, NOW());
        UPDATE ParkingSpots
        SET is_available = FALSE
        WHERE spot_id = spotID;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Spot not available';
    END IF;
END//
DELIMITER ;

-- Trigger to update parking spot availability on exit
CREATE TRIGGER UpdateSpotOnExit
AFTER UPDATE ON Transactions
FOR EACH ROW
BEGIN
    IF NEW.exit_time IS NOT NULL THEN
        UPDATE ParkingSpots
        SET is_available = TRUE
        WHERE spot_id = NEW.spot_id;
    END IF;
END;
