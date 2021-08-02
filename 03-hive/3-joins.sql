USE velkerr;

SET hive.auto.convert.join=true;
SELECT /*+ MAPJOIN(ipregions) */ * FROM serdeexample LEFT JOIN ipregions ON serdeexample.ip = ipregions.ip limit 10;
