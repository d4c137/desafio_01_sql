-- ============================================
-- PERGUNTA 10: Relatório gerencial
-- Mostre nome, cidade, total de compras e total gasto.
-- Apenas clientes que gastaram mais de R$ 200.
-- Ordene do maior gasto para o menor.
-- Nível: Desafio
-- ============================================

SELECT
    c.nome,
    c.cidade,
    COUNT(*) AS total_compras,
    SUM(v.valor_total) AS total_gasto
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome, c.cidade
HAVING SUM(v.valor_total) > 200
ORDER BY total_gasto DESC;
