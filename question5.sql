-- question 5
USE cardealershipdatabase;
SELECT *
FROM vehicles 
JOIN inventory ON vehicles.vin = inventory.vin 
JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
WHERE vehicles.make = "Ford"; 
