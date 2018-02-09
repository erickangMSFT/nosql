CREATE KEYSPACE ks WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor' : 2};

CREATE TABLE ks.users (
  userid uuid,
  name text,
  email text,
  country text,
  PRIMARY KEY (userid)
);

INSERT INTO ks.users (userid, name, email, country) VALUES (uuid(), 'Bondie Easseby', 'beassebyv@house.gov', 'France');

INSERT INTO ks.users (userid, name, email, country) VALUES (uuid(), 'Demetri Curror', 'dcurrorw@techcrunch.com', 'France');

INSERT INTO ks.users (userid, name, email, country) VALUES (uuid(), 'Langston Paulisch', 'lpaulischm@reverbnation.com', 'United States');

INSERT INTO ks.users (userid, name, email, country) VALUES (uuid(), 'Channa Devote', 'cdevote14@marriott.com', 'Denmark');

SELECT * FROM ks.users;

CREATE INDEX ON ks.users (email);

CREATE INDEX ON ks.users (country);