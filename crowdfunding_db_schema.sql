-- Create tables for each csv
CREATE TABLE category (
	category_id VARCHAR NOT NULL,
	category VARCHAR NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR NOT NULL,
	subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
	contact_id VARCHAR NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id VARCHAR NOT NULL,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launch_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Check that data has been successfully imported
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM campaign
