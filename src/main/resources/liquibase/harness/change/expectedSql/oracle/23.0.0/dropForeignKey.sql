ALTER TABLE LIQUIBASE.posts ADD CONSTRAINT fk_posts_authors_test FOREIGN KEY (author_id) REFERENCES LIQUIBASE.authors (id) ON DELETE CASCADE
ALTER TABLE LIQUIBASE.posts DROP CONSTRAINT fk_posts_authors_test