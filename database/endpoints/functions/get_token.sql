-- Validate user credentials
WITH validated_user AS (
    SELECT id
    FROM "USER"
    WHERE username = '{{ username }}'
      AND password_hash = crypt('{{ password }}', password_hash)
)
-- Create a new session if credentials are valid
INSERT INTO "SESSION" (user_id, session_token)
SELECT id, '{{ token }}' -- Generate a random session token
FROM validated_user
RETURNING id AS session_id, session_token, user_id;
