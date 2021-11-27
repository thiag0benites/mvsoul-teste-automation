#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Recebimento de Solicitações de Serviço
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/8-SERVICO_APOIO "3-tests\8-SERVICO_APOIO\M_RECEBE_SOL.robot"
# firefox: robot -v browser:firefox -d ./5-results/8-SERVICO_APOIO "3-tests\8-SERVICO_APOIO\M_RECEBE_SOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/8-SERVICO_APOIO "3-tests\8-SERVICO_APOIO\M_RECEBE_SOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/8-SERVICO_APOIO "3-tests\8-SERVICO_APOIO\M_RECEBE_SOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/8-SERVICO_APOIO/M_RECEBE_SOL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_recebe_sol
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMRECEBESOL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMRECEBESOL-001:Fluxo Principal" -d ./5-results/SCR8SMRECEBESOL-001 "3-tests/8-SERVICO_APOIO/M_RECEBE_SOL.robot"
# robot -v browser:firefox -t "SCR8SMRECEBESOL-001:Fluxo Principal" -d ./5-results/SCR8SMRECEBESOL-001 "3-tests/8-SERVICO_APOIO/M_RECEBE_SOL.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMRECEBESOL-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Solicitação de Serviço"@nprint @las
    Validar Acesso a Tela |Solicitação de Serviços|
    Preencher Tipo de OS e Bem Patrimonial |ELETIVA| |BEM AGREGADO - BEM AGREGADO - MARCA|
    Preencher Descricao |DESCRICAO TESTE AUTOMACAO|
    Preencher Campos Obrigatorios |OFICINA DE TRABALHO| |3333-4444| |soulmv@mv.com.br| |Alta|
    Salvar Solicitacao de Servico |Atenção: Existem solicitações de serviços em aberta(s) para este Bem.| |Registros gravados com sucesso|
    ${RecebeCodSolic}         Get Element Attribute       ${CampoCodSolicTelaSolic}    title
    Altera massa de dados da "${Suite}", linha "1", coluna "CdSolicitacao", valor "${RecebeCodSolic}"
    Click Elemento por titulo                    Sair
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Recebimento de Solicitações"@nprint @no
    Validar Acesso a Tela |Recebimento de Solicitações de Serviço|
    Realizar Consulta Pelo Codigo de Solicitacao |${RecebeCodSolic}|



    #Criar Solicitacao de Servico e Acessar Tela |Recebimento de Solicitações de Serviço| |m_solicitacao_serv| |1|
    #Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Recebimento de Solicitações"@nprint @Nova
    #Validar Acesso a Tela |${dados[NomeTela]}|
    #Realizar Consulta Pelo Codigo de Solicitacao |${dados[CodSolic]}|
    Validar Dados da Solicitacao |${dados[Descricao]}| |${dados[Estoque]}| |${dados[Usuario]}|
    Preencher Campos Sem Preenchimento |${dados[UsuarioSolicitante]}|
    Salvar Alteracoes |${dados[MensagemConf]}| |${dados[MensagemSucesso]}|
    Clicar Checkbox 'Recebida'
    Clicar Botao Ordem de Servico |${dados[EnvioEmail]}| |${dados[GravarAlteracoes]}| |${dados[MensagemSucesso]}|