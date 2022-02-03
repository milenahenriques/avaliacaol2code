--Retornar uma lista que apresente o nome das categorias e a quantidade de produtos totais em cada categoria.



SELECT categories.name, SUM (products.amount) 
FROM products 
INNER JOIN categories
ON products.id_categories=categories.id
GROUP BY 1;
