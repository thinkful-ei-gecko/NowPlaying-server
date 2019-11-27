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

INSERT INTO "user"("id", "username", "password", "email")
VALUES
    (
        1, 
        'demo',
        -- password = 'pass,
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG',
        'demo@email.com'
    ),
    (
        2, 
        'admin',
        -- password = 'pass,
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG',
        'admin@email.com'
    );

INSERT INTO "category"("id", "media_type")
VALUES 
    (1, 'movies'),
    (2, 'tv_shows'),
    (3, 'podcasts'),
    (4, 'books');

INSERT INTO "movies"("id", "title", "event_description", "date_created", "media_id")
VALUES
    (1, 'Lord of the Rings', 'LotR is a fantasy movie about a fellowship trying to stop the dark forces of Sauron', '2019-01-15', 1),
    (2, 'Inception', 'Prepare to have your mind incepted', '2018-04-07', 1),
    (3, 'Goodfellas', 'A gangster movie', '2018-08-09', 1),
    (4, 'Frozen', 'Let it goooooo', '2019-08-08', 1);

INSERT INTO "tv_shows"("id", "title", "event_description", "date_created", "media_id")
VALUES
    (1, 'Game of Thrones', 'People fighting over a chair', '2019-05-19', 2),
    (2, 'The Boys', 'A group of lads try to take down corrupt superheroes', '2018-02-12', 2),
    (3, 'Stranger Things', 'A group of young lads investigate mysterious happenings in the town of Hawkins, Indiana', '2018-12-12', 2),
    (4, 'Avatar: The Last Airbender', 'A group of young lads embark on an adventure to save the world from the Fire Nation', '2019-07-10', 2);

INSERT INTO "podcasts"("id", "title", "event_description", "date_created", "media_id")
VALUES
    (1, 'Crime Junkie', 'Podcast about crime', '2019-03-29', 3),
    (2, 'The Joe Rogan Experience', 'Joe Rogan being Joe Rogan', '2018-09-12', 3),
    (3, 'This Land', 'Podcast about history???', '2018-10-11', 3),
    (4, 'Serial', 'Podcast about serial killers', '2019-11-08', 3);

INSERT INTO "books"("id", "title", "event_description", "date_created", "media_id")
VALUES
    (1, 'Where the Red Fern Grows', 'A sad book with dogs', '2019-04-21', 4),
    (2, 'Born a Crime', 'Trevor Noah autobiography', '2018-05-22', 4),
    (3, 'Harry Potter and the Chamber of Secrets', 'Second Harry Potter book', '2017-09-19', 4),
    (4, 'The Very Hungry Caterpillar', 'He is hungry', '2019-12-02', 4);

INSERT INTO "movie_comments"("id", "user_comment", "user_name", "date_created", "movie_id")
VALUES
    (1, 'test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    (2, 'another test comment', 'admin', '2017-03-09 11:30:59', 1),
    (3, 'hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    (4, 'random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "tv_show_comments"("id", "user_comment", "user_name", "date_created", "tv_show_id")
VALUES
    (1, 'test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    (2, 'another test comment', 'admin', '2017-03-09 11:30:59', 2),
    (3, 'hello from EJ', 'demo', '1960-09-09 20:40:59', 2),
    (4, 'random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "podcast_comments"("id", "user_comment", "user_name", "date_created", "podcast_id")
VALUES
    (1, 'test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    (2, 'another test comment', 'admin', '2017-03-09 11:30:59', 1),
    (3, 'hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    (4, 'random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "book_comments"("id", "user_comment", "user_name", "date_created", "book_id")
VALUES
    (1, 'test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    (2, 'another test comment', 'admin', '2017-03-09 11:30:59', 1),
    (3, 'hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    (4, 'random comment', 'admin', '2010-02-10 10:30:59', 4);
-- SELECT setval('user_id_seq', (SELECT MAX(id) from "user"));
COMMIT;