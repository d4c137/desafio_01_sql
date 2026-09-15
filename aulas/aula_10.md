# 🎓 Aula 10: JOIN múltiplo + GROUP BY + HAVING + ORDER BY (revisão geral)
| Comando | Função |
|---------|--------|
| `SELECT` | Escolher colunas |
| `FROM` | Tabela principal |
| `INNER JOIN` | Juntar tabelas |
| `WHERE` | Filtrar linhas (opcional) |
| `GROUP BY` | Agrupar |
| `HAVING` | Filtrar grupos |
| `ORDER BY` | Ordenar |

---

## 🎯 Ordem completa (a mais importante!)

```
SELECT → FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY
```

**Decore isso!** É a espinha dorsal de qualquer consulta SQL avançada.

---

## 🔗 JOIN múltiplo

Você pode juntar **mais de duas tabelas**:

```sql
SELECT c.nome, p.nome, v.valor_total
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
INNER JOIN produtos p ON v.produto_id = p.id;
```

**Traduzindo:** *"Junte `clientes` com `vendas`, depois junte com `produtos`, e me mostre o nome do cliente, o nome do produto e o valor."*

**Cada `JOIN` adiciona uma tabela.** A ordem importa: você só pode juntar uma tabela que já está conectada.

---

## 📊 Exemplo completo (juntando tudo)

```sql
SELECT c.nome AS cliente, c.cidade, 
       COUNT(*) AS total_compras, 
       SUM(v.valor_total) AS total_gasto
FROM clientes c
INNER JOIN vendas v ON c.id = v.cliente_id
WHERE v.data_venda >= '2026-01-01'
GROUP BY c.nome, c.cidade
HAVING SUM(v.valor_total) > 200
ORDER BY total_gasto DESC;
```

**Traduzindo:** *"Junte `clientes` com `vendas`, filtre vendas a partir de 2026, agrupe por nome e cidade, mostre só quem gastou mais de R$ 200, e ordene do maior para o menor."*

---

## ⚠️ Detalhes importantes

| Detalhe | Exemplo |
|---------|---------|
| `WHERE` filtra **linhas** | `WHERE v.data_venda >= '2026-01-01'` |
| `HAVING` filtra **grupos** | `HAVING SUM(v.valor_total) > 200` |
| Tudo que não é agregação vai no `GROUP BY` | `GROUP BY c.nome, c.cidade` |
| Pode juntar **várias tabelas** | `JOIN a ON... JOIN b ON...` |

---

## 🎯 Resumo da Aula 10

| Comando | Função |
|---------|--------|
| `INNER JOIN` (múltiplo) | Juntar 3+ tabelas |
| `WHERE` | Filtrar linhas |
| `GROUP BY` | Agrupar |
| `HAVING` | Filtrar grupos |
| `ORDER BY` | Ordenar |

---
