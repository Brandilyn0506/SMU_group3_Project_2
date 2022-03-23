select * from website
select * from manufacturer
select * from diapers

SELECT
    d.diaper_id,
    d.price,
	d.reviews,
	m.manufacturer,
	w.website
FROM diapers d
INNER JOIN
    manufacturer m
ON
    d.manufacturer_id = m.manufacturer_id
INNER JOIN
	website w
ON
	d.website_id = w.website_id;