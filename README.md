# 📚 Modelagem de Banco de Dados - Livraria

Este repositório contém a modelagem de banco de dados para uma **livraria**, com foco nas etapas de **modelagem lógica e física**, implementadas em SQL. O objetivo é estruturar os dados necessários para o gerenciamento completo de vendas, estoque, clientes, avaliações de livros, pagamentos e devoluções.

## 📂 Arquivo do Projeto

- `LivrariaFisico.sql`: Script SQL com a definição completa do banco de dados (tabelas, atributos, chaves primárias e estrangeiras).

---

## 🧮 Modelo Lógico

O modelo lógico define a estrutura e os relacionamentos das tabelas da livraria, adaptando o modelo conceitual para o formato relacional.

### Principais Tabelas

- **Cliente**: Armazena dados pessoais do cliente e chave estrangeira para endereço.
- **Produto_Iten_pedido**: Une informações de livros com pedidos, armazenando quantidade, preço e estoque.
- **Estoque** e **Historico_estoque**: Controlam a disponibilidade e movimentação de produtos.
- **Pagamento**: Registra forma, valor e status do pagamento.
- **Historico_pedido_Pedido**: Representa o pedido e seu histórico de status.
- **Administrador**: Controle de acesso e operações internas.
- **Cupom** e **Campanhas_de_marketing**: Promoções vinculadas a campanhas específicas.
- **Avaliacao_do_produto**: Avaliações e comentários feitos pelos clientes sobre os produtos.
- **Devolucao**: Gerencia as devoluções dos pedidos.
- **Endereco**: Endereços associados aos clientes.

---

## 🏗️ Modelo Físico

O modelo físico está implementado em SQL, com as seguintes características:

- Criação das tabelas com `CREATE TABLE`
- Tipagem de dados (`INT`, `VARCHAR`, `FLOAT`, `DATE`)
- Definição de **chaves primárias**
- Criação de **chaves estrangeiras** com regras de integridade (`ON DELETE CASCADE`, `RESTRICT`, `SET NULL` etc.)

### Exemplo de tabela: `Cliente`
```sql
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR,
    telefone VARCHAR,
    fk_endereco_endereco_PK INT
);
