CREATE TABLE "podcasts"(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  title TEXT NOT NULL,
  event_description TEXT,
  date_created DATE DEFAULT now() NOT NULL,
  media_runtime INTEGER NOT NULL
);