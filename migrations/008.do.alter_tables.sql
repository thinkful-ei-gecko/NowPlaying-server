ALTER TABLE "movies"
  ADD COLUMN
    media_id INTEGER REFERENCES category(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "tv_shows"
  ADD COLUMN
    media_id INTEGER REFERENCES category(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "podcasts"
  ADD COLUMN
    media_id INTEGER REFERENCES category(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "books"
  ADD COLUMN
    media_id INTEGER REFERENCES category(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "movie_comments"
  ADD COLUMN
    media_id INTEGER REFERENCES "movies"(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "tv_show_comments"
  ADD COLUMN
    media_id INTEGER REFERENCES "tv_shows"(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "podcast_comments"
  ADD COLUMN
    media_id INTEGER REFERENCES "podcasts"(id) ON DELETE CASCADE NOT NULL;

ALTER TABLE "book_comments"
  ADD COLUMN
    media_id INTEGER REFERENCES "books"(id) ON DELETE CASCADE NOT NULL;