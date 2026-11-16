CREATE TABLE lab_products (
    product_sku VARCHAR(50) PRIMARY KEY,
    product_serial_code VARCHAR(100) NOT NULL,
    wholesale_cost DECIMAL(10,2)
);

INSERT INTO lab_products
    (product_sku, product_serial_code, wholesale_cost)
VALUES
    ('SKU-100', 'SER-999-AAA', 45.00),
    ('SKU-200', 'SER-888-BBB', 120.50);

CREATE INDEX idx_products_serial
ON lab_products(product_serial_code);

SELECT *
FROM lab_products
WHERE product_serial_code = 'SER-888-BBB';

SELECT *
FROM lab_products
WHERE product_sku = 'SKU-200';

SELECT *
FROM lab_products
WHERE wholesale_cost = '120.50';