
# Sistema de Gerenciamento de Produtos 🚀

## Sobre o Projeto

Uma aplicação desenvolvida usando SAP Cloud Application Programming (CAP) com interface Fiori UI.

## Funcionalidades ⭐

-   Gerenciamento de Produtos e Fornecedores
-   Dashboard Analítico em Tempo Real
-   Controle de Estoque
-   Acompanhamento de Fornecedores
-   Visualização Interativa de Dados
-   Integração com SAP Fiori UI

## Estrutura do Projeto 📁
├── app/                    # Aplicações frontend
│   └── fiori-app/         # Frontend SAP Fiori
├── db/                    # Camada de banco de dados
│   ├── schema.cds        # Modelos de dados
│   └── data/             # Dados de exemplo
├── srv/                  # Camada de serviço
    ├── products.cds      # Definições de serviço
    └── products.js       # Implementações de serviço

## Pré-requisitos 🛠️

-   Node.js (versão LTS)
-   SAP Cloud Application Programming (CAP) CLI
-   UI5 CLI (para frontend Fiori)

## Início Rápido 🚀

### 1. Clone o repositório
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

### 2. Instale as dependências
npm install

### 3. Inicie o servidor
cds watch

### 4. Acesse a aplicação

-   Backend:  http://localhost:4004
-   Frontend:  http://localhost:4004/fiori-app/webapp/index.html

## Serviços Disponíveis 📦

### CatalogService

-   `/catalog/Products`  - Gerenciamento de produtos
-   `/catalog/Suppliers`  - Gerenciamento de fornecedores
-   `/catalog/AnalyticsReport`  - Análises em tempo real

## Desenvolvimento 💻

### Backend

-   Modelos:  schema.cds
-   Serviços:  products.js
-   Definições:  products.cds

### Frontend

-   Aplicação:  fiori-app
-   UI Config:  `manifest.json`
-   Middleware:  `ui5.yaml`

## Documentação 📚

-   CAP Documentation
-   SAP Fiori
-   UI5

## Como Contribuir 🤝

1.  Faça um fork do projeto
2.  Crie sua branch (`git checkout -b feature/AmazingFeature`)
3.  Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4.  Push para a branch (`git push origin feature/AmazingFeature`)
5.  Abra um Pull Request