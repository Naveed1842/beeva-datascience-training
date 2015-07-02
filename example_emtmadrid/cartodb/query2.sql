select
ST_MakeLine(the_geom_webmercator order by distance) as the_geom_webmercator, line, secDetail from emtroutelines
group by line, secDetail
