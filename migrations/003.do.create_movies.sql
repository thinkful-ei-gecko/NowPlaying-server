CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  event_description TEXT,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  media_id INTEGER REFERENCES category(id) ON DELETE SET NULL NOT NULL
);