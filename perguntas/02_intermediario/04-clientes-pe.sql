-- ============================================
-- PERGUNTA 4: Quais clientes são do estado de Pernambuco (PE)?
-- Liste nome e cidade.
-- Nível: Médio
-- ============================================

SELECT nome, cidade
FROM clientes
WHERE estado = 'PE';
