--ADD JAR /opt/cloudera/parcels/CDH/lib/hive/lib/hive-contrib.jar;
ADD FILE ./task4.sh;

USE velkerr;

SELECT TRANSFORM(ip, `date`, request, responseCode)
USING './task4.sh' AS ip, `date`, request, responseCode
FROM SerDeExample
LIMIT 10;
