CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(150) UNIQUE
);

CREATE TABLE cuenta (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios(id),
    monto NUMERIC(10,2) CHECK (monto >= 0)
);

INSERT INTO usuarios (nombre, apellido, email)
VALUES
('Juan', 'Perez', 'juan@gmail.com'),
('Maria', 'Lopez', 'maria@gmail.com');

INSERT INTO cuenta (usuario_id, monto)
VALUES
(1, 1000),
(2, 500);

SELECT * FROM usuarios;

SELECT * FROM cuenta;

SELECT * FROM usuarios;

SELECT u.nombre, u.apellido, c.monto
FROM usuarios u
JOIN cuenta c ON u.id = c.usuario_id;

BEGIN;

UPDATE cuenta
SET monto = monto - 200
WHERE usuario_id = 1;

UPDATE cuenta
SET monto = monto + 200
WHERE usuario_id = 2;

COMMIT;

SELECT * FROM cuenta;



BEGIN;

UPDATE cuenta
SET monto = monto - 200
WHERE usuario_id = 1;

UPDATE cuenta
SET monto = monto + 200
WHERE usuario_id = 2;

COMMIT;
SELECT * FROM cuenta;

SELECT usuario_id, monto
FROM cuenta
ORDER BY usuario_id;


UPDATE cuenta
SET monto = 800
WHERE usuario_id = 1;

BEGIN;

UPDATE cuenta
SET monto = monto - 200
WHERE usuario_id = 1;

UPDATE cuenta
SET monto = monto + 200
WHERE usuario_id = 2;

SELECT * FROM cuenta;
UPDATE cuenta
SET monto = 1000
WHERE usuario_id = 1;

UPDATE cuenta
SET monto = 500
WHERE usuario_id = 2;

SELECT * FROM cuenta;


UPDATE cuenta
SET monto = 700
WHERE usuario_id = 2;

SELECT * FROM cuenta;

