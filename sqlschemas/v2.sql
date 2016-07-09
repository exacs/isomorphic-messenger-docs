---
--- Database schema for minimal-messenger v2
--------------------------------------------------------------------------------
--- This sql file is executable if the current schema is v1 or on new schemas
--------------------------------------------------------------------------------

---
--- Schemas for entities
-------------------------

-- "messages" schema
CREATE TABLE IF NOT EXISTS messages (
    message_id SERIAL PRIMARY KEY,
    text TEXT NOT NULL
);

-- "chats" schema
CREATE TABLE IF NOT EXISTS chats (
    chat_id SERIAL PRIMARY KEY,
    title VARCHAR(80) NOT NULL
);

---
--- Default data
-----------------
INSERT INTO chats (chat_id, title)
    VALUES (1, 'Default chat')
    ON CONFLICT DO NOTHING;

---
--- Schemas for relations
--------------------------
ALTER TABLE messages
    ADD COLUMN chat_id INTEGER DEFAULT 1
    ADD FOREIGN KEY (chat_id) REFERENCES chats;
