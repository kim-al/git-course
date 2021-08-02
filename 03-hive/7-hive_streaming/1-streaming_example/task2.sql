ADD FILE ./script.sh;

USE velkerr;

SELECT TRANSFORM(ip, mask)
USING './script.sh' AS ip2
FROM Subnets
LIMIT 10;
