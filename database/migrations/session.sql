    CREATE TABLE IF NOT EXISTS "SESSION" (
        id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL,
        session_token TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES "USER" (id)
    );