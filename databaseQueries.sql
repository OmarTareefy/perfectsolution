CREATE DATABASE `perfectsolution` /*!40100 DEFAULT CHARACTER SET utf8 */;


CREATE TABLE product_category (
	id int NOT NULL AUTO_INCREMENT,
	name_en NVARCHAR(50),
    name_ar NVARCHAR(50),
	description_en NTEXT,
    description_ar NTEXT,
	image_url NVARCHAR(50),
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY (id) 
);

CREATE TABLE admin (
	id int NOT NULL AUTO_INCREMENT,
	email VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);
insert into admin (email, role, enabled, password) values ('omar.tareefy@hotmail.com', 'ADMIN', true, 'admin')

CREATE TABLE product (
	id int NOT NULL AUTO_INCREMENT,
	code NVARCHAR(20),
	name_en NVARCHAR(50),
    name_ar NVARCHAR(50),
	brand_en NVARCHAR(50),
    brand_ar NVARCHAR(50),
	description_en TEXT,
    description_ar TEXT,
	is_active BOOLEAN,
	category_id INT,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES product_category (id)
);

CREATE TABLE service (
	id int NOT NULL AUTO_INCREMENT,
	code NVARCHAR(20),
	name_en NVARCHAR(50),
    name_ar NVARCHAR(50),
	description_en TEXT,
    description_ar TEXT,
	is_active BOOLEAN,
	category_id INT,
	CONSTRAINT pk_service_id PRIMARY KEY (id),
);

CREATE TABLE about(
	id int NOT NULL AUTO_INCREMENT,
	description_en TEXT,
    description_ar TEXT,
    mission_en TEXT,
	mission_ar TEXT,
	vision_en TEXT,
	vision_ar TEXT,
	top_img_url NVARCHAR(128),
	desc_img_url NVARCHAR(128),
	CONSTRAINT pk_about_id PRIMARY KEY (id)
);

