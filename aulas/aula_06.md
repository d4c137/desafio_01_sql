
## 🎓 Aula 6: WHERE com números (revisão) + ORDER BY

### Revisão rápida

```sql
SELECT colunas
FROM tabela
WHERE coluna < número
ORDER BY coluna;
```

### Exemplo

```sql
SELECT nome, preco
FROM produtos
WHERE preco < 50
ORDER BY preco ASC;
```

**Traduzindo:** *"Me mostre nome e preço dos produtos que custam menos de R$ 50, do mais barato ao mais caro."*

### Lembre-se

- Números **sem aspas**: `preco < 50`
- Texto **com aspas**: `especie = 'Cachorro'`
- `ASC` = crescente (padrão)
- `DESC` = decrescente

---
