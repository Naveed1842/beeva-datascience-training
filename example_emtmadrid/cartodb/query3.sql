SELECT a.*
from emtroutelines a,
(
SELECT the_geom_webmercator FROM emtroutelines
where name ilike '%BURGOS%16'
) b
where st_distance(a.the_geom_webmercator, b.the_geom_webmercator) < 300
