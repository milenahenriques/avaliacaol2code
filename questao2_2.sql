--Apresentar um relatório com as 4 categorias que mais tiveram produtos comprados.



SELECT products.id_categories AS id, categories.name AS categories, SUM (orders_products.units_sold)
FROM orders_products
INNER JOIN products 
ON orders_products.product_id = products.id
INNER JOIN categories
ON products.id_categories=categories.id
GROUP BY 1, 2
ORDER BY 3 desc
LIMIT 4;
