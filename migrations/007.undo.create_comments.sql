ALTER TABLE "books"
  DROP COLUMN IF EXISTS comment_id;

ALTER TABLE "podcasts"
  DROP COLUMN IF EXISTS comment_id;

ALTER TABLE "tv_shows"
  DROP COLUMN IF EXISTS comment_id;

ALTER TABLE "movies"
  DROP COLUMN IF EXISTS comment_id;

DROP TABLE IF EXISTS "comments";