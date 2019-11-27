CREATE TABLE "movie_comments" (
  id SERIAL PRIMARY KEY,
  user_comment TEXT NOT NULL,
  user_name TEXT REFERENCES "user"(username) ON DELETE SET NULL NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  movie_id INTEGER REFERENCES "movies"(id) ON DELETE SET NULL NOT NULL
);

CREATE TABLE "tv_show_comments" (
  id SERIAL PRIMARY KEY,
  user_comment TEXT NOT NULL,
  user_name TEXT REFERENCES "user"(username) ON DELETE SET NULL NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  tv_show_id INTEGER REFERENCES "tv_shows"(id) ON DELETE SET NULL NOT NULL
);

CREATE TABLE "podcast_comments" (
  id SERIAL PRIMARY KEY,
  user_comment TEXT NOT NULL,
  user_name TEXT REFERENCES "user"(username) ON DELETE SET NULL NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  podcast_id INTEGER REFERENCES "podcasts"(id) ON DELETE SET NULL NOT NULL
);

CREATE TABLE "book_comments" (
  id SERIAL PRIMARY KEY,
  user_comment TEXT NOT NULL,
  user_name TEXT REFERENCES "user"(username) ON DELETE SET NULL NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  book_id INTEGER REFERENCES "books"(id) ON DELETE SET NULL NOT NULL
);



