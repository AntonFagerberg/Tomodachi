# --- !Ups
DELETE FROM category;
INSERT INTO `category` (`id`, `title`)
  VALUES
  (1,'Things'),
  (2,'Verbs'),
  (3,'Entertainment & Sports'),
  (4,'Food & Drinks'),
  (5,'Places'),
  (6,'Time expressions'),
  (7,'Adjectives'),
  (8,'Adverbs'),
  (9,'Expressions'),
  (10,'Numbers'),
  (11,'Kanji'),
  (12,'Katakana');

# --- !Downs
DELETE FROM category;