/**
CREATE FUNCTION is_json(varchar) RETURNS boolean AS $$
  DECLARE
    x json;
  BEGIN
    BEGIN
      x := $1;
    EXCEPTION WHEN others THEN
      RETURN FALSE;
    END;

    RETURN TRUE;
  END;
$$ LANGUAGE plpgsql IMMUTABLE;*/

drop table if exists txt;
create temp table txt (values text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\bangkokUdp.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\canadaUdpChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\chennai.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\frankfurt.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\hongKong.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\istanbulPureVpnUdp.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\johannesburg.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\london2.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\losAngelesUdpChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\madrid.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\mexicoCityChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\moskau.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\newYorkChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\nigeriaPureVpnUdp.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\parisChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\saoPaulo.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\seoulUdpChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\stockholmUdp.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\sydney.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\warschau.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\washingtonUdpChangedDns.json"' with (format text);
--copy txt from program 'cmd /c "type D:\ScanResults\Usefull\zuerich.json"' with (format text);


/*select count(*), status
from
	(select j -> 'data' -> 'tls' -> 'status' as status
	from txt t, cast(t.values as jsonb) as j
	where is_json(t.values)) as status
group by status
order by status asc;*/

--create tablespace extern location 'D:\tablespace';
--create table tls(destination text, info jsonb) tablespace extern;

/*insert into tls(destination, info)
select 'Zuerich', jsn.innerJ
from (
	select j as innerJ
	from txt t, cast(t.values as jsonb) as j
	where is_json(t.values)) as jsn
where jsn.innerJ -> 'data' -> 'tls' ->> 'status' = 'success';*/

/*select * from tls
where info ->> 'domain' like '%google%'*/

/*select ltls.destination, rtls.destination, count(*)
from tls ltls
inner join tls rtls
on ltls.info ->> 'domain' = rtls.info ->> 'domain'
group by ltls.destination, rtls.destination;*/

SELECT
	*
FROM
	pg_catalog.pg_tables
WHERE
	schemaname != 'pg_catalog'
AND schemaname != 'information_schema';

/*
select * from cacountrylist2;
SELECT
  * 
FROM (
  SELECT
    ROW_NUMBER() OVER (PARTITION BY destination ORDER BY num DESC) AS r,
    t.*
  FROM
    cacountrylist2 t) x
WHERE
  x.r <= 10;
*/

select * from domainZert2 order by c1, c2;