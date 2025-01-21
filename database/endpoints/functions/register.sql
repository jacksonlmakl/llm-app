INSERT INTO "USER" (email, username, password_hash)
VALUES (
    '{{ email }}',
    '{{ username }}',
    '{{ password_hash }}'
)
RETURNING id;
