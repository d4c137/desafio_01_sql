-- ============================================
-- PERGUNTA 3: Quantos pets da espécie 'Cachorro' existem?
-- Nível: Fácil
-- ============================================

SELECT COUNT(*) AS total_de_pets
FROM pets
WHERE especie = 'Cachorro';
