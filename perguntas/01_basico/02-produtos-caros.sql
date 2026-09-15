-- ============================================
-- PERGUNTA 2: Quais produtos custam mais de R$ 100?
-- Ordene do mais caro para o mais barato.
-- Nível: Fácil
-- ============================================

SELECT nome, preco
FROM produtos
WHERE preco > 100
ORDER BY preco DESC;
