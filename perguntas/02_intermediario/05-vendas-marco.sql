-- ============================================
-- PERGUNTA 5: Qual o valor total de vendas em março/2026?
-- Nível: Médio
-- ============================================

SELECT SUM(valor_total) AS total
FROM vendas
WHERE data_venda BETWEEN '2026-03-01' AND '2026-03-31';
