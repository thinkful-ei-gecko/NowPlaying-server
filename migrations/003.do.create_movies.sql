CREATE TABLE "movies" (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  title TEXT NOT NULL,
  event_description TEXT,
  date_created DATE DEFAULT now() NOT NULL,
  media_runtime INTEGER NOT NULL,
  release_date TEXT DEFAULT NULL,
  genre TEXT DEFAULT NULL,
  imdb_rating INTEGER DEFAULT NULL,
  mpaa_rating TEXT DEFAULT NULL,
  poster TEXT DEFAULT NULL,
  backdrop TEXT DEFAULT NULL,
  movie_id INTEGER DEFAULT NULL
);