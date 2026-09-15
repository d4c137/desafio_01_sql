-- ============================================
-- PERGUNTA 6: Quais produtos estão com estoque abaixo de 20 unidades?
-- Ordene do menor estoque para o maior.
-- Nível: Médio
-- ============================================

SELECT nome, estoque
FROM produtos
WHERE estoque < 20
ORDER BY estoque ASC;
