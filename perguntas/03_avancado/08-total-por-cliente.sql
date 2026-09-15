-- ============================================
-- PERGUNTA 8: Qual o total gasto por cada cliente?
-- Ordene do maior gasto para o menor.
-- Nível: Avançado
-- ============================================

SELECT c.nome, SUM(v.valor_total) AS total_gasto
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome
ORDER BY total_gasto DESC;
