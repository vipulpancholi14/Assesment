-- Create database
CREATE DATABASE webappdb;

-- Connect to database
\c webappdb;

-- Create table
CREATE TABLE IF NOT EXISTS items (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO items (name, description) VALUES
  ('First item', 'This is the first item'),
  ('Second item', 'This is the second item'),
  ('Third item', 'This is the third item')
ON CONFLICT (id) DO NOTHING;
