# Projeto Folha de Pagamento — Mercadinho Fapa

Repositório inicial do Trabalho Integrador (A1/A3).

## Objetivo
Aplicação web acadêmica para cadastro de colaboradores e geração/consulta da folha mensal simplificada do Mercadinho Fapa.

## Tecnologias previstas
- Java 17
- Spring Boot
- Thymeleaf, HTML5 e CSS3
- Spring Data JPA
- Spring Security
- PostgreSQL
- Maven
- JUnit 5, Mockito e JaCoCo
- Git/GitHub

## Estrutura
- `01_Requisitos/`: Documento de Visão e ERS.
- `02_Analise/`: diagramas UML e fontes editáveis.
- `03_Projeto/`: arquitetura.
- `04_Testes/`: plano e casos de teste.
- `05_Codigo_Fonte/`: aplicação (esqueleto inicial).
- `06_Banco_Dados/`: scripts SQL.
- `10_Qualidade/`: PGQ, EAP e registro de defeitos.

## Preparação do banco
1. Crie um banco PostgreSQL vazio chamado `mercadinho_fapa`.
2. Execute `06_Banco_Dados/schema.sql`.
3. Para dados iniciais de demonstração, execute `06_Banco_Dados/dados_iniciais.sql`.
4. Para reiniciar a massa de testes, use `06_Banco_Dados/dados_teste.sql` **somente em banco de teste**, pois o script limpa as tabelas.
5. O script `carga_50_colaboradores.sql` é destinado exclusivamente ao teste de desempenho.

## Execução da aplicação
O código-fonte está apenas como estrutura inicial; as funcionalidades ainda precisam ser implementadas. Configure as credenciais locais do PostgreSQL em `05_Codigo_Fonte/src/main/resources/application.properties` antes de executar. Não envie senhas reais ao GitHub.

## Decisões técnicas recomendadas para fechar o escopo
- Aplicação web com Java 17, Spring Boot, Thymeleaf, Spring Security, Spring Data JPA, PostgreSQL e Maven.
- RH e funcionários terão login individual; funcionário só consulta os próprios dados.
- O perfil é determinado pelo cargo (RH/Administrativo = RH; demais cargos = Funcionário).
- Folha gerada é imutável e guarda snapshot de nome, cargo, salário e remuneração.
- Exportação PDF fica fora do núcleo da A1/A3 inicial; só implementar se houver tempo e a equipe ratificar.
- A remuneração simplificada é igual ao salário-base; não há descontos ou adicionais.

Consulte `10_Qualidade/Registro_Decisoes_Projeto.docx` e `01_Requisitos/Matriz_Rastreabilidade_Revisada.xlsx`.

## Atenção antes da entrega
- Confirmar com todos os integrantes as decisões marcadas como “a confirmar” na ERS e na Arquitetura.
- Confirmar o modelo/capa exigido pelo professor.
- Criar o repositório remoto no GitHub e fazer os commits reais de cada integrante.
- Os documentos PDF são versões de trabalho. Revisar coerência e aprovar o conteúdo em equipe antes de enviar.
- A execução dos testes e seus resultados reais pertencem à etapa de implementação; não preencher resultados sem executar os casos.
