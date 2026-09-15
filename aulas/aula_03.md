# 🎓 Aula 3: COUNT (contar registros)

## 📚 O que é o COUNT?

O `COUNT()` é uma **função de agregação** — ela pega **várias linhas** e retorna **um único número**.

**Sintaxe:**

```sql
SELECT COUNT(*) FROM tabela;
SELECT COUNT(*) FROM tabela WHERE condição;
```

---

## 🧩 Como funciona

### Exemplo 1: Contar todas as linhas

```sql
SELECT COUNT(*) FROM clientes;
```

**Resultado:**

```
+----------+
| COUNT(*) |
+----------+
|        8 |
+----------+
```

Retorna **8** porque existem 8 clientes cadastrados.

### Exemplo 2: Contar com filtro

```sql
SELECT COUNT(*) FROM clientes WHERE estado = 'PE';
```

**Resultado:**

```
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
```

Retorna **3** porque só 3 clientes são de PE.

---

## ⚠️ Detalhe: o nome feio da coluna

Quando você usa `COUNT(*)`, a coluna do resultado vem com o nome `COUNT(*)` — feio, né?

**Para dar um nome bonito, use `AS`:**

```sql
SELECT COUNT(*) AS total FROM clientes;
```

**Resultado:**

```
+-------+
| total |
+-------+
|     8 |
+-------+
```

Muito melhor! 😄

---

## 🎯 Outros usos do COUNT

| Comando | O que faz |
|---------|-----------|
| `COUNT(*)` | Conta todas as linhas |
| `COUNT(coluna)` | Conta linhas **não nulas** da coluna |
| `COUNT(DISTINCT coluna)` | Conta valores **únicos** |

### Exemplo com DISTINCT

```sql
SELECT COUNT(DISTINCT cidade) FROM clientes;
```

Retorna quantas **cidades diferentes** existem na tabela `clientes`.

---

## 📊 Comparação com outros comandos

| Comando | O que retorna |
|---------|---------------|
| `SELECT nome FROM clientes;` | Várias linhas (todos os nomes) |
| `SELECT COUNT(*) FROM clientes;` | Um número (quantidade de clientes) |

---

## ⚠️ Regras importantes

1. **`COUNT(*)` sempre retorna um número** — nunca texto
2. Pode ser usado com `WHERE` para filtrar antes de contar
3. Pode ser usado com `AS` para renomear a coluna
4. Não precisa de `ORDER BY` (só tem uma linha)
5. Pode ser combinado com `GROUP BY` (aula futura)

---

## 🎯 Resumo da Aula 3

| Comando | Função |
|---------|--------|
| `COUNT(*)` | Conta todas as linhas |
| `COUNT(coluna)` | Conta linhas não nulas |
| `COUNT(DISTINCT coluna)` | Conta valores únicos |
| `AS nome` | Renomeia a coluna do resultado |

---

