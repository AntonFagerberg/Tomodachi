# --- !Ups
CREATE TABLE vocable (
	id INT NOT NULL AUTO_INCREMENT,
	question VARCHAR(255) NOT NULL,
	answer VARCHAR(255) NOT NULL,
	category_id INT NOT NULL,
	CONSTRAINT pk_vocable PRIMARY KEY (id)
);

# --- !Downs
DROP TABLE vocable;