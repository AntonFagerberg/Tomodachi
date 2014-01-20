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
  (12,'Katakana'),
  (13,'Nouns'),
  (14,'Location words'),
  (15,'In the classroom'),
  (16,'Words that point'),
  (17,'Money matters'),
  (18,'Occupations'),
  (19,'Family'),
  (20,'Majors');

  -- lägg till tid (timmar & minuter)
  -- Länder?
  -- days weeks month years (iaf när jag är född)

# --- !Downs
DELETE FROM category;