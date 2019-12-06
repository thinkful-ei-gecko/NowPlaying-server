BEGIN;

TRUNCATE
    "user",
    "category",
    "movies",
    "tv_shows",
    "podcasts",
    "books",
    "movie_comments",
    "tv_show_comments",
    "podcast_comments",
    "book_comments";

INSERT INTO "user"("username", "password", "email")
VALUES
    (
        'demo',
        -- password = 'pass,
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG',
        'demo@email.com'
    ),
    (
        'admin',
        -- password = 'pass,
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG',
        'admin@email.com'
    );

INSERT INTO "category"("media_type", "media_name")
VALUES 
    ('movies', 'Movies'),
    ('tv_shows', 'TV Shows'),
    ('podcasts', 'Podcasts'),
    ('books', 'Books');

COMMIT;