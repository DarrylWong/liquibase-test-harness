CREATE TABLE LBUSER.test_table (test_id INTEGER NOT NULL, test_column VARCHAR2(50) NOT NULL, CONSTRAINT PK_TEST_TABLE PRIMARY KEY (test_id))
ALTER TABLE LBUSER.test_table SET UNUSED COLUMN test_column