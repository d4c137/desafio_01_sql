# 🎓 Aula 7: JOIN (juntar tabelas)
**Exemplo:** "Quero o nome do cliente e o nome dos seus pets."

- `clientes` tem: `nome` (do cliente)
- `pets` tem: `nome` (do pet), `cliente_id`

**Como ligar as duas?** Através do `cliente_id` — que é uma **chave estrangeira** (foreign key).

```
clientes                    pets
┌────┬──────────┐          ┌────┬────────────┬─────────┐
│ id │ nome     │          │ id │ cliente_id │ nome    │
├────┼──────────┤          ├────┼────────────┼─────────┤
│ 1  │ Guilherme│◄─────────│ 1  │ 1          │ Thor    │
│ 2  │ Ana      │◄─────────│ 3  │ 2          │ Bolinha │
│ 3  │ Carlos   │◄─────────│ 4  │ 3          │ Mia     │
└────┴──────────┘          └────┴────────────┴─────────┘
```

O `pets.cliente_id` **aponta** para o `clientes.id`. Isso é o que permite o JOIN.

---

## 📚 Sintaxe do INNER JOIN

```sql
SELECT colunas
FROM tabela1
INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

**Exemplo:**

```sql
SELECT clientes.nome, pets.nome
FROM clientes
INNER JOIN pets ON clientes.id = pets.cliente_id;
```

**Traduzindo:** *"Junte `clientes` com `pets` onde o `id` do cliente é igual ao `cliente_id` do pet. Me mostre o nome do cliente e o nome do pet."*

---

## 🎯 Tipos de JOIN

| JOIN | O que retorna |
|------|---------------|
| `INNER JOIN` | Só quem tem correspondência **nos dois lados** |
| `LEFT JOIN` | Todos da **esquerda** + correspondentes da direita |
| `RIGHT JOIN` | Todos da **direita** + correspondentes da esquerda |

### Exemplo visual

```
clientes          pets
┌────┬──────┐    ┌────┬────────────┐
│ id │ nome │    │ id │ cliente_id │
├────┼──────┤    ├────┼────────────┤
│ 1  │ A    │    │ 1  │ 1          │
│ 2  │ B    │    │ 2  │ 1          │
│ 3  │ C    │    │ 3  │ 2          │
└────┴──────┘    └────┴────────────┘
```

**INNER JOIN:** A→1, A→2, B→3 (só quem tem par)
**LEFT JOIN:** A→1, A→2, B→3, C→NULL (todos da esquerda)

---

## ⚠️ Detalhes importantes

| Detalhe | Exemplo |
|---------|---------|
| Use **alias** para encurtar | `FROM clientes c` |
| Refira colunas com alias | `c.nome`, `p.nome` |
| O `ON` é **obrigatório** | `ON c.id = p.cliente_id` |
| Pode juntar **várias tabelas** | `JOIN a ON... JOIN b ON...` |

### Exemplo com alias

```sql
SELECT c.nome AS cliente, p.nome AS pet
FROM clientes c
INNER JOIN pets p ON c.id = p.cliente_id;
```

---

## 🔍 INNER JOIN vs LEFT JOIN

| Situação | Use |
|----------|-----|
| Quero só quem tem correspondência | `INNER JOIN` |
| Quero **todos** da tabela principal, mesmo sem correspondência | `LEFT JOIN` |

**Exemplo prático:**

- "Quero os clientes **que têm** pets" → `INNER JOIN`
- "Quero **todos** os clientes, **mesmo os que não têm** pets" → `LEFT JOIN`

---

## 🎯 Resumo da Aula 7

| Comando | Função |
|---------|--------|
| `INNER JOIN` | Junta tabelas (só pares) |
| `LEFT JOIN` | Todos da esquerda + pares |
| `ON` | Condição de junção |
| `Alias` | Apelido para tabela |

---
