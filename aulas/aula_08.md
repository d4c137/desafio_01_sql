# 🎓 Aula 8: JOIN + GROUP BY + SUM
**Sem `GROUP BY`:**

```sql
SELECT SUM(valor_total) FROM vendas;
```

Isso soma **tudo** e retorna **1 linha**:

```
+------------------+
| SUM(valor_total) |
+------------------+
|          2010.00 |
+------------------+
```

**Com `GROUP BY`:**

```sql
SELECT cliente_id, SUM(valor_total) AS total
FROM vendas
GROUP BY cliente_id;
```

Isso soma **por cliente** e retorna **várias linhas** (uma por cliente):

```
+------------+---------+
| cliente_id | total   |
+------------+---------+
|          1 |  455.00 |
|          2 |  320.00 |
|          3 |  330.00 |
|          4 |  220.00 |
|          5 |  315.00 |
|          6 |   80.00 |
|          7 |  240.00 |
|          8 |  150.00 |
+------------+---------+
```

**Traduzindo:** *"Agrupe as vendas por `cliente_id` e some o `valor_total` de cada grupo."*

---

## 🔗 JOIN + GROUP BY juntos

O `GROUP BY` sozinho só mostra o `cliente_id` (número). Para mostrar o **nome** do cliente, precisamos do `JOIN`:

```sql
SELECT c.nome, SUM(v.valor_total) AS total
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome
ORDER BY total DESC;
```

**Traduzindo:** *"Junte `clientes` com `vendas`, agrupe por nome do cliente, some o total gasto e ordene do maior para o menor."*

---

## ⚠️ Regra de ouro do GROUP BY

**Tudo que está no `SELECT` e não é função de agregação precisa estar no `GROUP BY`.**

| SELECT | GROUP BY | OK? |
|--------|----------|-----|
| `c.nome, SUM(v.valor_total)` | `GROUP BY c.nome` | ✅ |
| `c.nome, c.cidade, SUM(...)` | `GROUP BY c.nome` | ❌ (falta `c.cidade`) |
| `c.nome, c.cidade, SUM(...)` | `GROUP BY c.nome, c.cidade` | ✅ |

**Exemplo do erro:**

```sql
-- ❌ ERRADO
SELECT c.nome, c.cidade, SUM(v.valor_total)
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome;
```

O MySQL vai reclamar: *"c.cidade is not in GROUP BY clause"*.

**Correto:**

```sql
-- ✅ CERTO
SELECT c.nome, c.cidade, SUM(v.valor_total)
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome, c.cidade;
```

---

## 📊 Funções de agregação

| Função | O que faz | Exemplo |
|--------|-----------|---------|
| `SUM()` | Soma | `SUM(valor_total)` |
| `COUNT()` | Conta | `COUNT(*)` |
| `AVG()` | Média | `AVG(preco)` |
| `MIN()` | Menor valor | `MIN(preco)` |
| `MAX()` | Maior valor | `MAX(preco)` |

---

## 🎯 Ordem completa dos comandos

```
SELECT → FROM → JOIN → WHERE → GROUP BY → ORDER BY
```

> ⚠️ O `WHERE` vem **antes** do `GROUP BY`. Se quiser filtrar **depois** do agrupamento, use `HAVING` (aula futura).

---

## 🎯 Resumo da Aula 8

| Comando | Função |
|---------|--------|
| `GROUP BY` | Agrupa linhas por uma coluna |
| `SUM()` | Soma valores do grupo |
| `JOIN` | Junta tabelas |
| `ORDER BY` | Ordena o resultado |
| Regra | Tudo que não é agregação vai no `GROUP BY` |

---