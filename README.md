# 📚 Modelagem de Banco de Dados - Livraria

Este repositório contém o projeto de modelagem de dados para uma livraria, abordando os modelos **conceitual**, **lógico** e **físico**, com foco em controle de livros, vendas, estoque, fornecedores e mais.

---

## 📐 Modelo Conceitual

O modelo conceitual foi desenvolvido com base em um levantamento de requisitos típicos de uma livraria física, identificando entidades principais como:

- **Livro**
- **Cliente**
- **Funcionário**
- **Venda**
- **Estoque**
- **Fornecedor**
- **Compra**
- **Editora**
- **Autor**
- **Categoria**
- **Item de Venda**
- **Promoções**
- **Formas de Pagamento**
- **Endereço**

Relacionamentos principais:
- Um livro pode ter vários autores (relação `possui`)
- Um livro pode pertencer a várias categorias (relação `contem`)
- Uma venda é feita por um funcionário para um cliente
- As compras são feitas de fornecedores por funcionários
- Um livro pode estar associado a uma promoção, item de venda e estoque

---

## 🧾 Modelo Lógico

O modelo lógico é representado através das tabelas relacionais com os devidos tipos de dados, chaves primárias e estrangeiras, e relacionamentos normalizados.

Principais características:
- Tabelas com nomes descritivos e normalizadas
- Uso de tipos como `INT`, `VARCHAR`, `DATE`, `FLOAT`
- Relacionamentos implementados com `FOREIGN KEY` e ações de deleção (`ON DELETE`)
- Evita redundância de dados com entidades auxiliares como `ItemDeVenda` e `ItemDaCompra`

---

## 🗃️ Modelo Físico

O modelo físico foi implementado em SQL, compatível com o MySQL/MariaDB. O script disponível no arquivo [`LivrariaFisicoBD.sql`](./LivrariaFisicoBD.sql) contém:

- Criação de todas as tabelas
- Definição de chaves primárias
- Definição de chaves estrangeiras com `ALTER TABLE`
- Tratamento de relacionamentos com regras de integridade referencial
- Estrutura duplicada da tabela `endereco` (pode ser ajustada)

⚠️ Algumas partes do script ainda contêm valores indefinidos (`???`) que devem ser ajustados, principalmente nos relacionamentos da tabela `endereco`.

---

## 🛠️ Como utilizar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
