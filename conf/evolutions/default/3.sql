# --- !Ups
DELETE FROM category;
INSERT INTO `category` (`id`, `title`)
  VALUES
  (1,'Phrases'),
  (2,'Vocabulary'),
  (3,'Nouns'),
  (4,'Countries'),
  (5,'Majors'),
  (6,'Time & Age'),
  (7,'Location words'),
  (8,'Time expressions'),
  (9,'Verbs'),
  (12,'Adjectives'),
  (11,'Adverbs'),
  (13,'Kanji'),
  (10,'Numbers');

  -- Sidan 127 :E
  -- 145 kanske

# --- !Downs
DELETE FROM category;