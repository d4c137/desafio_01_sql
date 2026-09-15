# 🎓 Aula 4: WHERE + ORDER BY (revisão e combinação)

## 📚 Revisão rápida

| Comando | Função | Exemplo |
|---------|--------|---------|
| `WHERE` | Filtra linhas | `WHERE estado = 'PE'` |
| `ORDER BY` | Ordena o resultado | `ORDER BY data_cadastro ASC` |

**Juntos**, eles respondem perguntas como:

> *"Me mostre os clientes de PE, ordenados do mais antigo para o mais novo."*

---

## 🧩 Estrutura completa

A ordem **sempre** é esta:

```sql
SELECT colunas
FROM tabela
WHERE condição
ORDER BY coluna [ASC|DESC];
```

⚠️ **Se você inverter a ordem, dá erro.** O MySQL é rígido quanto a isso.

---

## 🎯 Exemplos práticos

### Exemplo 1: Filtrar e ordenar por texto

```sql
SELECT nome, cidade
FROM clientes
WHERE estado = 'PE'
ORDER BY nome ASC;
```

**Traduzindo:** *"Me mostre nome e cidade dos clientes de PE, ordenados por nome de A a Z."*

### Exemplo 2: Filtrar e ordenar por número

```sql
SELECT nome, preco
FROM produtos
WHERE preco > 100
ORDER BY preco DESC;
```

**Traduzindo:** *"Me mostre nome e preço dos produtos acima de R$ 100, do mais caro ao mais barato."*

### Exemplo 3: Filtrar e ordenar por data

```sql
SELECT nome, data_cadastro
FROM clientes
WHERE estado = 'PE'
ORDER BY data_cadastro ASC;
```

**Traduzindo:** *"Me mostre nome e data de cadastro dos clientes de PE, do mais antigo ao mais recente."*

---

## 📅 Como o MySQL lê datas

O MySQL entende datas no formato **`AAAA-MM-DD`**:

| Data | Como escrever |
|------|---------------|
| 15 de janeiro de 2024 | `'2024-01-15'` |
| 30 de agosto de 2024 | `'2024-08-30'` |
| 10 de março de 2026 | `'2026-03-10'` |

**Datas sempre entre aspas simples**, como texto.

---

## 🔍 Operadores de comparação com datas

| Operador | Exemplo | Significado |
|----------|---------|-------------|
| `=` | `WHERE data = '2026-03-15'` | Igual |
| `>` | `WHERE data > '2026-01-01'` | Depois dessa data |
| `<` | `WHERE data < '2026-01-01'` | Antes dessa data |
| `>=` | `WHERE data >= '2026-01-01'` | A partir dessa data |
| `<=` | `WHERE data <= '2026-12-31'` | Até essa data |
| `BETWEEN` | `WHERE data BETWEEN '2026-03-01' AND '2026-03-31'` | Entre duas datas |

---

## 🎯 Ordem dos comandos (decore!)

```
1. SELECT
2. FROM
3. WHERE
4. ORDER BY
```

**Nunca** inverta. O MySQL não perdoa.

---

## 💡 Dica: leia de trás para frente

```sql
SELECT nome, cidade
FROM clientes
WHERE estado = 'PE'
ORDER BY data_cadastro ASC;
```

Leia assim:

> *"Da tabela `clientes`, onde `estado = 'PE'`, me mostre `nome` e `cidade`, ordenados por `data_cadastro` crescente."*

Isso ajuda a entender a **lógica** antes de olhar as colunas.

---

## 🎯 Resumo da Aula 4

| Comando | Função |
|---------|--------|
| `SELECT` | Escolhe as colunas |
| `FROM` | Escolhe a tabela |
| `WHERE` | Filtra linhas |
| `ORDER BY` | Ordena o resultado |
| `ASC` | Ordem crescente (padrão) |
| `DESC` | Ordem decrescente |

---
