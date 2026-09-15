
## 🎓 Aula 2: WHERE (filtro)

### O que é o WHERE?

O `WHERE` é como um **filtro de café**: ele deixa passar só o que interessa.

**Sintaxe:**

```sql
SELECT colunas
FROM tabela
WHERE condição;
```

### Exemplos

| Objetivo | SQL |
|----------|-----|
| Clientes de Recife | `SELECT * FROM clientes WHERE cidade = 'Recife';` |
| Produtos acima de R$ 100 | `SELECT * FROM produtos WHERE preco > 100;` |
| Pets com menos de 3 anos | `SELECT * FROM pets WHERE idade < 3;` |
| Clientes de PE **e** Recife | `SELECT * FROM clientes WHERE estado = 'PE' AND cidade = 'Recife';` |

### Operadores do WHERE

| Operador | Significado | Exemplo |
|----------|-------------|---------|
| `=` | Igual | `WHERE cidade = 'Recife'` |
| `>` | Maior | `WHERE preco > 100` |
| `<` | Menor | `WHERE idade < 3` |
| `>=` | Maior ou igual | `WHERE preco >= 50` |
| `<=` | Menor ou igual | `WHERE idade <= 5` |
| `<>` ou `!=` | Diferente | `WHERE estado <> 'PE'` |
| `AND` | E | `WHERE estado = 'PE' AND cidade = 'Recife'` |
| `OR` | Ou | `WHERE cidade = 'Recife' OR cidade = 'São Paulo'` |

### ⚠️ Regra de ouro

**Texto sempre entre aspas simples:** `'Recife'`, `'PE'`, `'Cachorro'`
**Números sem aspas:** `100`, `3`, `2026`
---
