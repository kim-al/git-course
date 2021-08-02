ADD JAR /opt/cloudera/parcels/CDH/lib/hive/lib/hive-serde.jar;

USE velkerr;

DROP TABLE IF EXISTS SerDeExample;

CREATE EXTERNAL TABLE SerDeExample (
    ip STRING,
    `date` INT,
    request STRING,
    page_size SMALLINT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
    "input.regex" = '^(\\S+)\\t{3}(\\d{8})\\S+\\t(\\S+)\\t(\\S+)\\t.*$'
)
STORED AS TEXTFILE
LOCATION '/data/user_logs/user_logs_M';

CREATE EXTERNAL TABLE IpRegions(
    ip STRING,
    region STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION '/data/user_logs/ip_data_M/';

select * from SerDeExample limit 10;
select * from IpRegions limit 10;

-- "output.format.string" = "%2$s %1$s %3$s"
