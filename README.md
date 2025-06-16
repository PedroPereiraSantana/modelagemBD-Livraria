# 📚 Modelagem de Banco de Dados - Livraria

Este repositório contém a modelagem de banco de dados de uma **livraria**, criada utilizando o software **BrModelo 3**. O projeto abrange as três fases principais da modelagem: **conceitual**, **lógica** e **física**.

## 📁 Arquivo do Projeto

🗂️ `livraria.brM3`  
Arquivo do projeto criado no BrModelo 3. Abra esse arquivo no software para visualizar os diagramas e realizar alterações.

---

## 🧠 Modelo Conceitual

O modelo conceitual foi elaborado utilizando o **Modelo Entidade-Relacionamento (MER)**. Ele apresenta as principais entidades envolvidas na operação da livraria e seus relacionamentos.

### Entidades:
- `Livro`
- `Cliente`
- `Venda`
- `Funcionário`
- `Fornecedor`
- `FormaPagamento`
- `Compra`

### Relacionamentos:
- Um `Cliente` pode realizar várias `Vendas`.
- Cada `Venda` pode ser paga com uma ou mais `Formas de Pagamento`.
- Um `Livro` pode ser fornecido por vários `Fornecedores`.
- Uma `Compra` é feita por um `Funcionário` e envolve um ou mais `Livros`.

---

## 🧮 Modelo Lógico

O modelo lógico transforma o modelo conceitual em tabelas, com definição de atributos, chaves primárias (PK) e estrangeiras (FK).

### Exemplos de tabelas:
- **Livro** (`id_livro`, `titulo`, `autor`, `preco`, `estoque`)
- **Cliente** (`id_cliente`, `nome`, `cpf`, `telefone`)
- **Venda** (`id_venda`, `data`, `id_cliente`, `id_funcionario`)
- **Fornecedor** (`id_fornecedor`, `nome`, `cnpj`)
- **FormaPagamento** (`id_forma`, `tipo`)
- **Compra** (`id_compra`, `data`, `id_funcionario`, `id_fornecedor`)

---

## 🏗️ Modelo Físico

O modelo físico é a implementação do banco de dados em SQL. Ele define os comandos `CREATE TABLE`, restrições de integridade e relacionamentos com `FOREIGN KEY`.

### Exemplo de criação de tabela:
```sql
CREATE TABLE Livro (
  id_livro INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  autor VARCHAR(100),
  preco DECIMAL(8,2),
  estoque INT
);
