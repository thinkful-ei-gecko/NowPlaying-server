BEGIN;

TRUNCATE
    "user";

INSERT INTO "user"("id", "username", "name", "password", "email")
VALUES
    (
        1, 
        'demo',
        'Demo User',
        -- password = 'pass,
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG',
        'demo@email.com'
    );

-- SELECT setval('user_id_seq', (SELECT MAX(id) from "user"));
COMMIT;