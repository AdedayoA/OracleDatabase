DROP TABLE customer;
CREATE TABLE customer (
    id NUMBER NOT NULL PRIMARY KEY, 
    name VARCHAR2(40),
    address VARCHAR2(40),
    city VARCHAR2(40),
    state VARCHAR2(40),
    zip VARCHAR2(40));

DROP TABLE item;
CREATE TABLE item (
    id NUMBER  NOT NULL PRIMARY KEY,
    name VARCHAR2(40),
    description VARCHAR2(43));

DROP TABLE sale;
CREATE TABLE sale (
    id NUMBER NOT NULL PRIMARY KEY,
    item_id NUMBER,
    customer_id NUMBER,
    date_created DATE,
    quantity NUMBER,
    price NUMBER);

INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 1, 'Bill Smith', '123 Main Street', 'Hope', 'CA', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 2, 'Mary Smith', '123 Dorian Street', 'Harmony', 'AZ', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 3, 'Bob Smith', '123 Laugh Street', 'Humor', 'CA', '98765' );

INSERT INTO item ( id, name, description ) VALUES ( 1, 'Box of 64 Pixels', '64 RGB pixels in a decorative box' );
INSERT INTO item ( id, name, description ) VALUES ( 2, 'Sense of Humor', 'Especially dry. Imported from England.' );
INSERT INTO item ( id, name, description ) VALUES ( 3, 'Beauty', 'Inner beauty. No cosmetic surgery required!' );
INSERT INTO item ( id, name, description ) VALUES ( 4, 'Bar Code', 'Unused. In original packaging.' );

INSERT INTO sale ( id, item_id, customer_id, date_created, quantity, price ) VALUES ( 1, 1, 2, '27-FEB-09', 3, 2995 );
INSERT INTO sale ( id, item_id, customer_id, date_created, quantity, price ) VALUES ( 2, 2, 2, '27-FEB-09', 1, 1995 );
INSERT INTO sale ( id, item_id, customer_id, date_created, quantity, price ) VALUES ( 3, 1, 1, '28-FEB-09', 1, 2995 );
INSERT INTO sale ( id, item_id, customer_id, date_created, quantity, price ) VALUES ( 4, 4, 3, '28-FEB-09', 2, 999 );
INSERT INTO sale ( id, item_id, customer_id, date_created, quantity, price ) VALUES ( 5, 1, 2, '28-FEB-09', 1, 2995 );
COMMIT;


