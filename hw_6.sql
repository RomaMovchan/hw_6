CREATE TABLE IF NOT EXISTS Students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) not null,
    surname VARCHAR(100) not null,
    year INT
);

CREATE TABLE IF NOT EXISTS Cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(id) ON DELETE CASCADE
);

INSERT INTO Students VALUES
    (1, 'Ivan', 'Mazepa', 1990),
    (2, 'Stepan', 'Bandera', 1991),
    (3, 'Petr', 'Mogila', 1995);

INSERT INTO Cities VALUES
    (1, 'Kyiv', 1),
    (2, 'Odesa', 2);

DELETE FROM Students WHERE id = 1;