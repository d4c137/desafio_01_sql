# 🎓 Aula 9: GROUP BY + COUNT + HAVING

| Comando | O que faz | Quando usar |
|---------|-----------|-------------|
| `WHERE` | Filtra **linhas** | Antes do agrupamento |
| `HAVING` | Filtra **grupos** | Depois do agrupamento |

**Exemplo:**

```sql
SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;
```

**Traduzindo:** *"Agrupe os produtos por categoria, conte quantos tem em cada, e mostre só as categorias com mais de 2 produtos."*

---

## 🧠 Por que não usar WHERE?

O `WHERE` **não funciona** com funções de agregação. Isso dá erro:

```sql
-- ❌ ERRADO
SELECT categoria, COUNT(*) AS total
FROM produtos
WHERE COUNT(*) > 2
GROUP BY categoria;
```

**Erro:** *"Invalid use of group function"*

O correto é usar `HAVING`:

```sql
-- ✅ CERTO
SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;
```

---

## 🎯 Ordem completa dos comandos

```
SELECT → FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY
```

| Comando | Filtra o quê? |
|----------|---------------|
| `WHERE` | Linhas (antes de agrupar) |
| `HAVING` | Grupos (depois de agrupar) |

---

## 📊 Exemplo prático

```sql
SELECT c.nome, COUNT(*) AS total_compras
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
GROUP BY c.nome
HAVING COUNT(*) > 1
ORDER BY total_compras DESC;
```

**Traduzindo:** *"Mostre os clientes que fizeram mais de 1 compra, com a quantidade de compras, ordenado do maior para o menor."*

---

## ⚠️ Detalhes importantes

| Detalhe | Exemplo |
|---------|---------|
| `HAVING` vem **depois** do `GROUP BY` | `GROUP BY ... HAVING ...` |
| Pode usar funções de agregação | `HAVING COUNT(*) > 2` |
| Pode usar `AND` / `OR` | `HAVING COUNT(*) > 2 AND SUM(valor) > 100` |
| `WHERE` e `HAVING` podem coexistir | `WHERE ... GROUP BY ... HAVING ...` |

---

## 🎯 Resumo da Aula 9

| Comando | Função |
|---------|--------|
| `GROUP BY` | Agrupa linhas |
| `HAVING` | Filtra grupos (depois do GROUP BY) |
| `COUNT()` | Conta linhas do grupo |
| `SUM()` | Soma valores do grupo |

---