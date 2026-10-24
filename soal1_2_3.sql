CREATE SCHEMA SALAM;

CREATE TABLE SALAM.mahasiswas (
    id_mhs SERIAL PRIMARY KEY,
    nim VARCHAR(20) UNIQUE NOT NULL,
    nama VARCHAR(100) NOT NULL,
    umur INT CHECK (umur >= 17)
);

INSERT INTO SALAM.mahasiswas (nim, nama, umur) VALUES ('2026001', 'Naila', 19);
INSERT INTO SALAM.mahasiswas (nim, nama, umur) VALUES ('2026002', 'Budi', 15);
INSERT INTO SALAM.mahasiswas (nim, nama, umur) VALUES ('2026001', 'Citra', 20);

SELECT * FROM SALAM.mahasiswas;