GRANT USAGE ON SCHEMA SALAM TO backend_dev, bi_dev, data_engineer;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO backend_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO data_engineer;
GRANT USAGE, CREATE ON SCHEMA SALAM TO data_engineer;

SET ROLE data_engineer;
CREATE TABLE IF NOT EXISTS SALAM.tabel_bukti_de (
    id SERIAL PRIMARY KEY,
    nama_test VARCHAR(50)
);
INSERT INTO SALAM.tabel_bukti_de (nama_test) VALUES ('Berhasil buat tabel');
SELECT current_user AS user_aktif, * FROM SALAM.tabel_bukti_de;
RESET ROLE;

SET ROLE bi_dev;
INSERT INTO SALAM.tabel_bukti_de (nama_test) VALUES ('Coba insert bi_dev');
RESET ROLE;