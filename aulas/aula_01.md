# 🎓 Aula 1: SELECT + FROM
## 📚 O que é o SELECT?

O `SELECT` é o comando que **busca dados** no banco. É como pedir para o MySQL:

> *"Me mostre essas colunas daquela tabela."*

**Sintaxe básica:**

```sql
SELECT coluna1, coluna2, coluna3
FROM nome_da_tabela;
```

---

## 🧩 Anatomia de uma consulta

```sql
SELECT nome, cidade, estado
FROM clientes;
```

| Parte | O que significa |
|-------|-----------------|
| `SELECT` | "Quero buscar..." |
| `nome, cidade, estado` | "...estas 3 colunas..." |
| `FROM` | "...da tabela..." |
| `clientes` | "...chamada `clientes`." |
| `;` | Fim do comando (obrigatório!) |

---

## 🎯 Exemplos práticos

### Exemplo 1: Buscar todas as colunas

```sql
SELECT * FROM clientes;
```

O `*` significa **"todas as colunas"**. Retorna `id`, `nome`, `cidade`, `estado`, `data_cadastro`.

### Exemplo 2: Buscar colunas específicas

```sql
SELECT nome, cidade FROM clientes;
```

Retorna só `nome` e `cidade`.

### Exemplo 3: Buscar uma única coluna

```sql
SELECT nome FROM clientes;
```

Retorna só os nomes.

---

## ⚠️ Regras importantes

| Regra | Exemplo |
|-------|---------|
| Colunas separadas por vírgula | `SELECT nome, cidade` |
| **Sem** vírgula no último | `SELECT nome, cidade` (não `cidade,`) |
| `FROM` no singular | `FROM cliente` ❌ → `FROM clientes` ✅ |
| `;` no final | `SELECT nome FROM clientes;` |
| Maiúsculas ou minúsculas | `SELECT` = `select` (tanto faz) |

---

## 🎨 Como o resultado aparece

Quando você roda:

```sql
SELECT nome, cidade, estado FROM clientes;
```

O MySQL retorna uma **tabela**:

```
+---------------------+----------------+--------+
| nome                | cidade         | estado |
+---------------------+----------------+--------+
| Guilherme Fernandes | Recife         | PE     |
| Ana Souza           | São Paulo      | SP     |
| ...                 | ...            | ...    |
+---------------------+----------------+--------+
```

---

## 💡 Dica de leitura

Leia a consulta **de trás para frente**:

```sql
SELECT nome, cidade, estado
FROM clientes;
```

> *"Da tabela `clientes`, me mostre `nome`, `cidade` e `estado`."*

Isso ajuda a entender **qual tabela** está sendo consultada antes de ver **o que** está sendo pedido.

---