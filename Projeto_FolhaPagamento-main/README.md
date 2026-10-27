# Projeto Folha de Pagamento — Mercadinho Fapa

Repositório inicial do Trabalho Integrador (A1/A3).

## Equipe
Guilherme Belotto · Kauã Garcia · Leonardo Trinca

## Objetivo
Aplicação web acadêmica para cadastro de colaboradores e geração/consulta da folha mensal simplificada do Mercadinho Fapa, para a disciplina Garantia da Qualidade de Software.

## Funcionalidades previstas
- **RH:** login, cadastro/consulta/edição de colaboradores, alteração de salário-base, ativar/inativar, gerar folha mensal e consultar folhas anteriores.
- **Funcionário:** login e consulta apenas dos próprios dados e do histórico de pagamentos.

## Regras salariais
- A remuneração mensal é o salário-base cadastrado; não há cálculo de impostos, descontos, bônus ou horas extras.
- O total da folha é a soma dos salários-base dos colaboradores **ativos**.
- Uma folha por mês/ano; folha gerada não é alterada por mudanças posteriores de salário.
- Inativar um colaborador não apaga seu histórico.

## Situação atual (A1)
Documentação e planejamento concluídos (pastas 01 a 04 e 10), banco modelado (06) e esqueleto Maven/Spring Boot (05). **O sistema ainda não está implementado**; a implementação e a execução dos testes fazem parte da A3. Não há resultados de testes registrados.

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
- `07_Executavel/`, `08_Manuais/`, `09_Homologacao/`, `11_Apresentacao/`: reservadas para a A3.
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

## Convenções de Git
Commits em português no formato `tipo: descrição` (docs, feat, fix, test, chore), no ramo `main`. Cada integrante commita a própria parte.
