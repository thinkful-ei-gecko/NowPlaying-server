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

INSERT INTO "category"("media_type")
VALUES 
    ('movies'),
    ('tv_shows'),
    ('podcasts'),
    ('books');

INSERT INTO "movies"("title", "event_description", "date_created", "media_id")
VALUES
    ('Lord of the Rings', 'LotR is a fantasy movie about a fellowship trying to stop the dark forces of Sauron', '2019-01-15', 1),
    ('Inception', 'Prepare to have your mind incepted', '2018-04-07', 1),
    ('Goodfellas', 'A gangster movie', '2018-08-09', 1),
    ('Frozen', 'Let it goooooo', '2019-08-08', 1);

INSERT INTO "tv_shows"("title", "event_description", "date_created", "media_id")
VALUES
    ('Game of Thrones', 'People fighting over a chair', '2019-05-19', 2),
    ('The Boys', 'A group of lads try to take down corrupt superheroes', '2018-02-12', 2),
    ('Stranger Things', 'A group of young lads investigate mysterious happenings in the town of Hawkins, Indiana', '2018-12-12', 2),
    ('Avatar: The Last Airbender', 'A group of young lads embark on an adventure to save the world from the Fire Nation', '2019-07-10', 2);

INSERT INTO "podcasts"("title", "event_description", "date_created", "media_id")
VALUES
    ('Crime Junkie', 'Podcast about crime', '2019-03-29', 3),
    ('The Joe Rogan Experience', 'Joe Rogan being Joe Rogan', '2018-09-12', 3),
    ('This Land', 'Podcast about history???', '2018-10-11', 3),
    ('Serial', 'Podcast about serial killers', '2019-11-08', 3);

INSERT INTO "books"("title", "event_description", "date_created", "media_id")
VALUES
    ('Where the Red Fern Grows', 'A sad book with dogs', '2019-04-21', 4),
    ('Born a Crime', 'Trevor Noah autobiography', '2018-05-22', 4),
    ('Harry Potter and the Chamber of Secrets', 'Second Harry Potter book', '2017-09-19', 4),
    ('The Very Hungry Caterpillar', 'He is hungry', '2019-12-02', 4);

INSERT INTO "movie_comments"("user_comment", "user_name", "date_created", "media_id")
VALUES
    ('test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    ('another test comment', 'admin', '2017-03-09 11:30:59', 1),
    ('hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    ('random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "tv_show_comments"("user_comment", "user_name", "date_created", "media_id")
VALUES
    ('test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    ('another test comment', 'admin', '2017-03-09 11:30:59', 2),
    ('hello from EJ', 'demo', '1960-09-09 20:40:59', 2),
    ('random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "podcast_comments"("user_comment", "user_name", "date_created", "media_id")
VALUES
    ('test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    ('another test comment', 'admin', '2017-03-09 11:30:59', 1),
    ('hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    ('random comment', 'admin', '2010-02-10 10:30:59', 4);

INSERT INTO "book_comments"("user_comment", "user_name", "date_created", "media_id")
VALUES
    ('test comment 1', 'demo', '2019-09-09 01:30:59', 1),
    ('another test comment', 'admin', '2017-03-09 11:30:59', 1),
    ('hello from EJ', 'demo', '1960-09-09 20:40:59', 3),
    ('random comment', 'admin', '2010-02-10 10:30:59', 4);

COMMIT;