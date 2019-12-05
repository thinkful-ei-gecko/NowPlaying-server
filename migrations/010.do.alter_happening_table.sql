-- ALTER TABLE "happening" 
--     ADD COLUMN
--         movie_title TEXT REFERENCES "movies"(title) ON DELETE CASCADE DEFAULT NULL,
--         tv_show_title TEXT REFERENCES "tv_shows"(title) ON DELETE CASCADE DEFAULT NULL,
--         podcast_title TEXT REFERENCES "podcasts"(title) ON DELETE CASCADE DEFAULT NULL,
--         book_title TEXT REFERENCES "books"(title) ON DELETE CASCADE DEFAULT NULL,
--         movie_id TEXT REFERENCES "movies"(media_id) ON DELETE CASCADE DEFAULT NULL, 
--         tv_show_id TEXT REFERENCES "tv_shows"(media_id) ON DELETE CASCADE DEFAULT NULL, 
--         podcast_id TEXT REFERENCES "podcasts"(media_id) ON DELETE CASCADE DEFAULT NULL, 
--         book_id TEXT REFERENCES "books"(media_id) ON DELETE CASCADE DEFAULT NULL, 
--         movie_username TEXT REFERENCES "movie_comments"(user_name) ON DELETE CASCADE DEFAULT NULL, 
--         tv_show_username TEXT REFERENCES "tv_show_comments"(user_name) ON DELETE CASCADE DEFAULT NULL, 
--         podcast_username TEXT REFERENCES "podcast_comments"(user_name) ON DELETE CASCADE DEFAULT NULL, 
--         book_username TEXT REFERENCES "book_comments"(user_name) ON DELETE CASCADE DEFAULT NULL, 
--         movie_comment TEXT REFERENCES "movie_comments"(user_comment) ON DELETE CASCADE DEFAULT NULL, 
--         tv_show_comment TEXT REFERENCES "tv_show_comments"(user_comment) ON DELETE CASCADE DEFAULT NULL, 
--         podcast_comment TEXT REFERENCES "podcast_comments"(user_comment) ON DELETE CASCADE DEFAULT NULL, 
--         book_comment TEXT REFERENCES "book_comments"(user_comment) ON DELETE CASCADE DEFAULT NULL, 
--         media_movie_title TEXT REFERENCES "movie_comments"(media_title) ON DELETE CASCADE DEFAULT NULL,
--         media_tv_show_title TEXT REFERENCES "tv_show_comments"(media_title) ON DELETE CASCADE DEFAULT NULL,
--         media_podcast_title TEXT REFERENCES "podcast_comments"(media_title) ON DELETE CASCADE DEFAULT NULL,
--         media_book_title TEXT REFERENCES "book_comments"(media_title) ON DELETE CASCADE DEFAULT NULL;



