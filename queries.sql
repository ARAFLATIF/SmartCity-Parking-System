-- Query to find available parking spots
SELECT * FROM ParkingSpots WHERE is_available = TRUE;

-- Query to book a parking spot
UPDATE ParkingSpots
SET is_available = FALSE
WHERE spot_id = 1;

-- Query to track parking history for a user
SELECT * FROM Transactions
WHERE user_id = 1;

-- Query to check a vehicle's current parking status
SELECT * FROM Transactions
WHERE vehicle_id = 1 AND exit_time IS NULL;
