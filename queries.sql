create extension tablefunc;

create table total_values as
WITH tmp AS (
    SELECT
      poli_services.gid,
      unnest(poli_services.services) srv_id
    FROM poli_services
), tmp2 AS (
    SELECT
      p.gid,
      p.landuse,
      srv.biome,
      srv.ecosystem,
      srv.service,
      srv.subservice,
      st_area(geom) / 10000                      area_ha,
      (st_area(geom) / 10000) * srv.query_values assess_val_usd,
      p.geom
    FROM landuse p
      JOIN tmp ON p.gid = tmp.gid
      JOIN servicios srv ON tmp.srv_id = srv.unique_id
) select
    gid,
    landuse,
    sum(assess_val_usd)  total_assess_val,
    sum(area_ha) area_ha,
    sum(area_ha) * 10000 / 3980 area_cda,
    sum(assess_val_usd) / sum(area_ha) usd_per_ha,
    sum(assess_val_usd) / (sum(area_ha) * 10000 / 3980 ) usd_per_cda,
    geom
  from tmp2
  group by gid, landuse, geom
;


