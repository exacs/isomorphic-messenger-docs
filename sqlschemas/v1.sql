---
--- Database schema for minimal-messenger v1
--------------------------------------------------------------------------------

---
--- Schemas for entities
-------------------------

-- "messages" schema
CREATE TABLE IF NOT EXISTS messages (
   message_id SERIAL PRIMARY KEY,
   text TEXT NOT NULL
);
