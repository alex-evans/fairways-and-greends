DROP TABLE IF EXISTS architect;
DROP TABLE IF EXISTS course;

CREATE TABLE architect (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    architect_id INTEGER NOT NULL,
    opened TIMESTAMP NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    FOREIGN KEY (architect_id) REFERENCES architect (id)
)
