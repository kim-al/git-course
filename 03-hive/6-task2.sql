ADD JAR /opt/cloudera/parcels/CDH/lib/hive/lib/hive-contrib.jar;

USE velkerr;

SET mapred.job.name=task6;
EXPLAIN
SELECT AVG(counts.cnt)
FROM (
    SELECT mask, count(ip) as cnt
    FROM Subnets
    GROUP BY mask
) counts;
