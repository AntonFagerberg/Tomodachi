# --- !Ups
CREATE TABLE category(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  CONSTRAINT pk_category PRIMARY KEY (id)
);

# --- !Downs
DROP TABLE category;