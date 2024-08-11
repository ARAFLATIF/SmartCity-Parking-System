-- Report on parking utilization
SELECT spot_id, COUNT(*) AS total_uses
FROM Transactions
GROUP BY spot_id;

-- Report on total revenue
SELECT SUM(amount_paid) AS total_revenue
FROM Transactions;

-- Report on user activity
SELECT user_id, COUNT(*) AS total_bookings
FROM Transactions
GROUP BY user_id;
