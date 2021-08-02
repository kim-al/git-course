USE velkerr;

SELECT TRANSFORM(ip)
USING 'cut -d . -f 1' AS ip
FROM Subnets
LIMIT 10;
