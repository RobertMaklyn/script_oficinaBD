## Projeto - OficinaDB
Este projeto implementa um banco de dados relacional para gerenciar as operações de uma oficina mecânica. Ele inclui tabelas para ordens de serviço (OS), veículos, clientes, peças, equipes, mecânicos, serviços e mão de obra. O script SQL cria o banco de dados, define as tabelas com suas relações, insere dados fictícios para teste e realiza consultas para explorar os dados.

## Funcionalidades do Banco de Dados
1.Criação do Banco de Dados

- Banco de dados OficinaDB criado com tabelas relacionadas para armazenar informações de uma oficina mecânica.
2. Estrutura das Tabelas

- OS: Armazena as ordens de serviço com informações de status, valor total e datas.
- Veiculo: Armazena os dados de veículos, vinculados às ordens de serviço.
- Cliente: Registra os clientes e relaciona cada um a um veículo.
- ServicosOS: Registra os serviços prestados e seus custos associados.
- Peca: Armazena as peças disponíveis na oficina e seus preços.
- PecasOS: Registra as peças utilizadas em cada ordem de serviço.
- Equipe: Define as equipes responsáveis pelas ordens de serviço.
- Mecanico: Registra os mecânicos e suas especialidades, vinculados às equipes.
- MaoDeObra: Detalha os serviços de mão de obra associados às ordens de serviço.

3.Inserção de Dados Fictícios

Inclui dados fictícios para clientes, veículos, ordens de serviço, serviços, peças, equipes, mecânicos e mão de obra.
Consultas para Teste

4.Consultas SQL abrangendo:
- Seleção Simples: Recuperação de dados básicos, como ordens de serviço e veículos.
- Filtros com WHERE: Exemplo: Veículos fabricados após 2020.
- Cálculo de Atributos Derivados: Exemplo: Cálculo do custo total das peças em uma ordem de serviço.
- Ordenação com ORDER BY: Exemplo: Ordenar clientes por nome em ordem alfabética.
- Agrupamento com GROUP BY e Filtragem com HAVING: Exemplo: Filtrar ordens de serviço com custo total superior a 1500.
- Junções entre Tabelas: Relacionar informações entre clientes, veículos e ordens de serviço.

## Como Utilizar
- Execute os scripts SQL para criar e povoar o banco de dados.
- Use as consultas SQL para explorar dados e gerar relatórios.