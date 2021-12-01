##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Recebimento de Solicitações de Serviço
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_RECEBE_SOL_PAGE.robot
Resource          M_SOLICITACAO_SERV_STEPS.robot
Resource          ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
### Keyword para criação da massa de dados necessária para o teste ###
Criar Solicitacao de Servico e Acessar Tela |${NomeTela}| |${Suite}| |${LinhaGerenciador}|
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Solicitação de Serviço"@nprint @las
    Validar Acesso a Tela |Solicitação de Serviços|
    Preencher Tipo de OS e Bem Patrimonial |ELETIVA| |BEM AGREGADO - BEM AGREGADO - MARCA|
    Preencher Descricao |DESCRICAO TESTE AUTOMACAO|
    Preencher Campos Obrigatorios |OFICINA DE TRABALHO| |3333-4444| |soulmv@mv.com.br| |Alta|
    Salvar Solicitacao de Servico |Atenção: Existem solicitações de serviços em aberta(s) para este Bem.| |Registros gravados com sucesso|
    ${RecebeCodSolic}         Get Element Attribute       ${CampoCodSolicTelaSolic}    title
    Altera massa de dados da "${Suite}", linha "${LinhaGerenciador}", coluna "CdSolicitacao", valor "${RecebeCodSolic}"
    Click Elemento por titulo                    Sair
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Recebimento de Solicitações"@nprint @no
    Validar Acesso a Tela |${NomeTela}|
    Realizar Consulta Pelo Codigo de Solicitacao |${RecebeCodSolic}|

#### ------------------------------------------------------------- ####

Realizar Consulta Pelo Codigo de Solicitacao |${CodSolic}|
    Click Elemento por titulo                    Procurar
    Preencher Campo                              ${CampoCodSolic}            ${CodSolic}  
    Click Elemento por titulo                    Executar Consulta

Validar Dados da Solicitacao |${Descricao}| |${Estoque}| |${Usuario}|
    Validar Elemento Pelo Titulo                 ${Descricao}
    Validar Elemento Pelo Titulo                 ${Estoque}
    Validar Elemento Pelo Titulo                 ${Usuario}

Preencher Campos Sem Preenchimento |${UsuarioSolicitante}|
    Selecionar Item Na Lista                 ${BotaoLovFuncResp}             ${UsuarioSolicitante}      ${UsuarioSolicitante}
    # ${RecebeFuncionario}            SeleniumLibrary.Get Text     ${CampoFuncionario}
    # IF      ${RecebeFuncionario} == 'GPINA'
    #     Selecionar Item Na Lista                 ${BotaoLovFuncResp}         ANDREVASCONCELOS         ANDREVASCONCELOS
    # ELSE 
    #     Selecionar Item Na Lista                 ${BotaoLovFuncResp}         GPINA                    GPINA
    # END

Salvar Alteracoes |${MensagemConf}| |${MensagemSucesso}|
    Click Elemento por titulo                    Salvar
    Valida Mensagem                              ${MensagemToast}            ${MensagemConf}
    Click no Item                                ${BotaoSim}
    Valida Mensagem                              ${MensagemToast}            ${MensagemSucesso}

Clicar Checkbox 'Recebida'
    Marcar Checkbox |${CbRecebida}|

Clicar Botao Ordem de Servico |${EnvioEmail}| |${GravarAlteracoes}| |${MensagemSucesso}|
    Click no Item                                ${BotaoOrdemServico}
    Valida Mensagem                              ${MensagemToast}            ${EnvioEmail}
    Click no Item                                ${BotaoOk}
    Validar Acesso a Tela |Ordem de Serviço|
    Click Elemento por titulo                    Sair
    Valida Mensagem                              ${MensagemToast}            ${GravarAlteracoes}
    Click no Item                                ${BotaoNao}
    Valida Mensagem                              ${MensagemToast}            ${MensagemSucesso}
    








    