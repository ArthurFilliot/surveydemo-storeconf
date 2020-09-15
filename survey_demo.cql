ALTER KEYSPACE system_auth WITH replication={'class':'SimpleStrategy','replication_factor':3};
CREATE KEYSPACE survey_demo WITH replication={'class':'SimpleStrategy','replication_factor':3};
USE survey_demo;
CREATE TABLE survey (
    survey_id text,
    date text,
    time timestamp,
    score double,
    age int,
    PRIMARY KEY ((survey_id, date), time)
) WITH CLUSTERING ORDER BY (time DESC);
