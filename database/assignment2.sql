--Task 1
-- Add a new account for Tony Stark
-- with the default account type of Client
INSERT INTO account (
	account_firstname,
	account_lastname, 
	account_email,
	account_password
)
VALUES (
	'Tony',
	'Stark',
	'tony@starkent.com',
	'Iam1ronM@n'
)

--Task 2
-- Update the account type for Tony Stark to Admin
UPDATE account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com'

--Task 3
-- Dekete the account for Tony Stark
DELETE FROM account
WHERE account_email = 'tony@starkent.com';

--Task 4
-- Modify the inventory description for GM HUMMER
-- to replace 'small interiors' with 'a huge interior'
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'HUMMER';


-- Task 5
-- Query to find all Sport vehicles in the inventory
SELECT inv.inv_make, inv.inv_model, cls.classification_name
FROM inventory AS inv
INNER JOIN classification AS cls
ON inv.classification_id = cls.classification_id
WHERE cls.classification_name = 'Sport';

-- Task 6
-- Update the image paths in the inventory table
-- to include the 'vehicles' directory
UPDATE inventory
SET 
  inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
  inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
