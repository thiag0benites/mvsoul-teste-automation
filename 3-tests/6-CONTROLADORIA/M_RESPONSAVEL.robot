#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_RESPONSAVEL "3-tests\6-CONTROLADORIA\M_RESPONSAVEL.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_RESPONSAVEL "3-tests\6-CONTROLADORIA\M_RESPONSAVEL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_RESPONSAVEL "3-tests\6-CONTROLADORIA\M_RESPONSAVEL.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_RESPONSAVEL "3-tests\6-CONTROLADORIA\M_RESPONSAVEL.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_RESPONSAVEL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_responsavel
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-8820 : Cadastrar Responsaveis
# robot -v browser:chrome -t "SMF-8820 : Cadastrar Responsaveis" -d ./5-results/SMF-8820 "3-tests/6-CONTROLADORIA/M_RESPONSAVEL.robot"
# robot -v browser:firefox -t "SMF-8820 : Cadastrar Responsaveis" -d ./5-results/SMF-8820 "3-tests/6-CONTROLADORIA/M_RESPONSAVEL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8820"
    Acessar a tela "Controladoria>Caixa>Tabelas>Responsáveis"@nprint @las
    Seleciona Pessoa Fisica ou Pessoa Juridica |${dados}[SelecionaPFouPJ]|    ### PREENCHER COM PF ou PJ ###
    Seleciona Cadastro Estrangeiro ou Resp Ativo |${dados}[CadEstrangeiroRespAtivo]|
    Informar o Nome |${dados}[NomeCliente]| e a Nacionalidade |${dados}[Nacionalidade]| da Pessoa - Suite|${suite}| Linha Gerenciador|${dados}[id]|
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8820"
    Informar CPF|${dados}[NumeroCPF]| ou CNPJ|${dados}[NumeroCNPJ]|>|${dados}[CPFouCNPJ]| nos campos apresentados
    Preencher Inscricao Municipal |${dados}[InscricaoMunicip]| e Estadual |${dados}[InscricaoEstad]|
    Pesquisa CEP "Estado|${dados}[Estado]|" "Cidade|${dados}[Cidade]|" "Bairro|${dados}[Bairro]|" "Logradouro|${dados}[Logradouro]|" "Numero|${dados}[NumeroCasa]|" "Telefone|${dados}[Telefone]|"
    Informar os dados bancarios do responsavel "Banco|${dados}[Banco]|" "Agencia|${dados}[Agencia]|e Digito|${dados}[DigitoAg]|" "Conta Corrente|${dados}[ContaCorrente]| e Digito|${dados}[DgtCC]|"
    # Clicar no botao <Cadastro de Nacionalidade> Cod Pais|${dados}[CodigoPais]|> Descricao Nacional|${dados}[DescricaoNacionalidade]|    ### AÇÃO OPCIONAL ###
    Clicar no botao<Salvar> "Nacionalidade |${dados}[ValidNacionalidade]|"
