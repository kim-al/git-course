ADD JAR CopyIp/jar/CopyIp.jar;

USE velkerr;

CREATE TEMPORARY FUNCTION copyip as 'com.hobod.CopyIpUDTF';

select copyip(ip)
from subnets;
