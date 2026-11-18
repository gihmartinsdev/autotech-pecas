# AutoTech Parts • Gestão de Estoque da Oficina (JDBC + SQLite)

Aplicação de console com CRUD de peças em SQLite (`autotech.db`).

## Estrutura
- `model/Peca.java` — entidade
- `factory/ConexaoFactory.java` — conexão JDBC
- `dao/PecaDao.java` — criar tabela, salvar, listar, buscar por código e dar baixa no estoque
- `main/MainApp.java` — menu de console

## Como executar
1. Crie a pasta `lib` na raiz e coloque dentro `sqlite-jdbc-3.45.1.0.jar`,
   `slf4j-api-1.7.36.jar` e `slf4j-simple-1.7.36.jar`.
2. VS Code: abra a pasta, abra `src/br/com/autotech/main/MainApp.java` e aperte F5.
   Ou dê duplo clique no `executar.bat`.
