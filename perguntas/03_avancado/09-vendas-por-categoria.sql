-- ============================================
-- PERGUNTA 9: Qual a quantidade de vendas por categoria?
-- Mostre apenas categorias com mais de 3 vendas.
-- Nível: Avançado
-- ============================================

SELECT categoria, COUNT(*) AS quantidade_vendas
FROM produtos
INNER JOIN vendas ON produtos.id = vendas.produto_id
GROUP BY categoria
HAVING COUNT(*) > 3;
