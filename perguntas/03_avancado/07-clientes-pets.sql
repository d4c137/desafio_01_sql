-- ============================================
-- PERGUNTA 7: Liste o nome de cada cliente e o nome dos seus pets.
-- Clientes sem pets também devem aparecer.
-- Nível: Avançado
-- ============================================

SELECT c.nome AS cliente, p.nome AS pet
FROM clientes c
LEFT JOIN pets p ON c.id = p.cliente_id;
