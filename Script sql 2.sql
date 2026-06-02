UPDATE cuenta
SET monto = monto + 50
WHERE usuario_id = 1;

SELECT * FROM cuenta;

BEGIN;

UPDATE cuenta
SET monto = monto - 5000
WHERE usuario_id = 1;

UPDATE cuenta
SET monto = monto + 5000
WHERE usuario_id = 2;

ROLLBACK;

BEGIN;

UPDATE cuenta
SET monto = monto - 5000
WHERE usuario_id = 1;

SELECT * FROM cuenta;

ROLLBACK;

SELECT * FROM cuenta;

BEGIN;

UPDATE cuenta
SET monto = monto - 50
WHERE usuario_id = 1;

SELECT * FROM cuenta;

ROLLBACK;

SELECT * FROM cuenta;