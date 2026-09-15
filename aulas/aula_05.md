# 🎓 Aula 5: BETWEEN + SUM

## 1️⃣ BETWEEN (intervalo)

O `BETWEEN` filtra valores **dentro de um intervalo** (incluindo os extremos).

**Sintaxe:**

```sql
WHERE coluna BETWEEN valor1 AND valor2
```

**Exemplo:**

```sql
SELECT * FROM vendas
WHERE data_venda BETWEEN '2026-03-01' AND '2026-03-31';
```

**Traduzindo:** *"Me mostre as vendas feitas entre 1º e 31 de março de 2026."*

**É o mesmo que:**

```sql
WHERE data_venda >= '2026-03-01' AND data_venda <= '2026-03-31'
```

| Operador | Uso |
|----------|-----|
| `BETWEEN` | Mais legível, menos código |
| `>= AND <=` | Mesma coisa, mais verboso |

**Funciona com:**
- Números: `WHERE preco BETWEEN 50 AND 150`
- Datas: `WHERE data BETWEEN '2026-01-01' AND '2026-12-31'`
- Texto: `WHERE nome BETWEEN 'A' AND 'M'`

---

## 2️⃣ SUM (somar)

O `SUM()` **soma** os valores de uma coluna numérica.

**Sintaxe:**

```sql
SELECT SUM(coluna) FROM tabela;
SELECT SUM(coluna) FROM tabela WHERE condição;
```

**Exemplo simples:**

```sql
SELECT SUM(valor_total) AS total FROM vendas;
```

**Traduzindo:** *"Me mostre a soma de todos os `valor_total` da tabela `vendas`."*

**Exemplo com filtro:**

```sql
SELECT SUM(valor_total) AS total 
FROM vendas 
WHERE data_venda BETWEEN '2026-03-01' AND '2026-03-31';
```

**Traduzindo:** *"Me mostre a soma das vendas feitas em março de 2026."*

---

## ⚠️ Detalhes importantes

| Detalhe | Exemplo |
|---------|---------|
| `SUM` só funciona com **números** | `SUM(valor_total)` ✅ / `SUM(nome)` ❌ |
| `SUM` retorna **1 linha** | Como o `COUNT` |
| Use `AS` para nomear | `SUM(valor_total) AS total` |
| Datas **entre aspas** | `BETWEEN '2026-03-01' AND '2026-03-31'` |

---

## 📊 Comparação: COUNT vs SUM

| Comando | O que faz | Exemplo |
|---------|-----------|---------|
| `COUNT(*)` | Conta **linhas** | `COUNT(*) → 15` |
| `SUM(coluna)` | Soma **valores** | `SUM(valor_total) → 2010.00` |

---

## 🎯 Resumo da Aula 5

| Comando | Função |
|---------|--------|
| `BETWEEN x AND y` | Filtra intervalo (inclusive) |
| `SUM(coluna)` | Soma valores numéricos |
| `AS nome` | Renomeia a coluna |

---