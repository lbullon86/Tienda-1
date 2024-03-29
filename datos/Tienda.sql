CREATE TABLE cliente
(Nombre TEXT NOT NULL,
Dni TEXT,
Direccion TEXT NOT NULL,
CONSTRAINT PK_cliente PRIMARY KEY (Dni)
);

CREATE TABLE albaran
(Sku NUMBER,
Name TEXT NOT NULL,
Precio NUMBER NOT NULL,
CONSTRAINT PK_albaran PRIMARY KEY (Sku)
);

CREATE TABLE compra
(IdCompra INTEGER PRIMARY KEY AUTOINCREMENT,
Factura NUMBER NOT NULL,
Sku NUMBER NOT NULL,
Dni TEXT NOT NULL,
Fecha strftime('%Y-%m-%d','now'),
Unidades NUMBER NOT NULL,
CONSTRAINT FK_albaran_compra FOREIGN KEY (Sku)
REFERENCES albaran (Sku),
CONSTRAINT FK_cliente_compra FOREIGN KEY (Dni)
REFERENCES cliente (Dni)
);
