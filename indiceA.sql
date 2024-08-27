ALTER TABLE Pago
DROP INDEX codigos_pagos;
CREATE INDEX filtro_pagos
ON Pago (codigo_de_pago);
SHOW INDEX FROM codigos_pagos;

SELECT * FROM Pago;

