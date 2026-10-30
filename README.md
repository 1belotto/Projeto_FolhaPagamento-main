Sistema de Folha de Pagamento — Mercadinho Fapa
Sobre o projeto
O Sistema de Folha de Pagamento do Mercadinho Fapa é um projeto acadêmico desenvolvido para a disciplina de Garantia da Qualidade de Software. A proposta é organizar o cadastro de funcionários, o gerenciamento das remunerações e a geração e consulta das folhas de pagamento mensais.

A aplicação será web, com acesso por usuário e senha e permissões definidas conforme o perfil de acesso.
Funcionalidades previstas
- Autenticação de usuários com perfil de RH ou Funcionário.
- Cadastro, consulta, edição, ativação e inativação de funcionários pelo RH.
- Cadastro de matrícula, nome, cargo, categoria de remuneração, data de admissão e salário-base.
- Alteração do salário-base e dos parâmetros de remuneração pelo RH autorizado.
- Registro dos dados variáveis de vendas e produção para cada período de referência.
- Geração de folhas de pagamento mensais, incluindo automaticamente os funcionários ativos.
- Cálculo da remuneração de acordo com a categoria do funcionário.
- Consulta de folhas anteriores pelo RH.
- Consulta, pelo funcionário, do próprio salário, dos demonstrativos e do histórico de pagamentos.
Categorias de remuneração
O sistema contempla três categorias de remuneração. O cargo do funcionário e sua categoria de remuneração são informações distintas.
- Padrão: a remuneração corresponde ao salário-base cadastrado.
- Comissionado: a remuneração corresponde ao salário-base acrescido da comissão calculada sobre o total de vendas e o percentual de comissão.
- Por produção: a remuneração corresponde ao salário-base acrescido do resultado da quantidade produzida multiplicada pelo valor unitário.
Fórmulas de cálculo
- Padrão: Remuneração = Salário-base
- Comissionado: Remuneração = Salário-base + (Total de vendas × Percentual de comissão ÷ 100)
- Por produção: Remuneração = Salário-base + (Quantidade produzida × Valor unitário)
Os dados de vendas e de produção são informados para cada período de referência. Os parâmetros utilizados e os valores calculados devem ser registrados na folha para preservar o histórico.
Regras principais
- Os cargos definidos para o projeto são Gerente, Caixa, Repositor e RH.
- Todo funcionário possui salário-base cadastrado.
- Somente funcionários ativos são incluídos automaticamente nas novas folhas.
- A geração da folha é identificada por mês e ano, não sendo permitida mais de uma folha para o mesmo período.
- Quando não houver funcionários ativos, a geração da folha será impedida.
- Alterações futuras no salário-base ou nos parâmetros de remuneração não modificam os valores registrados em folhas anteriores.
- Cada funcionário pode consultar somente suas próprias informações salariais e seus demonstrativos; o RH possui acesso às funções administrativas autorizadas.
- O sistema não realiza cálculos automáticos de impostos, contribuições ou descontos.
Tecnologias selecionadas
Camada / finalidade	Tecnologia
Linguagem e backend	Java e Spring Boot
Interface web	HTML5, CSS3 e Thymeleaf
Gerenciamento de dependências	Maven
Banco de dados	PostgreSQL
Controle de versão e repositório	Git e GitHub
Testes automatizados	JUnit
Cobertura de código planejada	JaCoCo


Estrutura do projeto
O repositório organiza os artefatos acadêmicos e os materiais do sistema em diretórios separados, incluindo requisitos, análise, projeto, testes, código-fonte, banco de dados e qualidade de software. A estrutura será atualizada conforme o desenvolvimento avançar.
Situação do projeto
Projeto acadêmico em planejamento e desenvolvimento. Este repositório reúne a documentação e os artefatos produzidos pela equipe. A implementação das funcionalidades e a execução dos casos de teste serão registradas conforme a evolução do projeto.
Equipe
- Guilherme Belotto
- Kauã Garcia
- Leonardo Trinca
