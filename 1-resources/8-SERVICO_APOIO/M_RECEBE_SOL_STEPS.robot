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
# Criar Solicitacao de Servico e Acessar Tela |${NomeTela}|
#     Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Solicitação de Serviço"@nprint @las
#     Validar Acesso a Tela |Solicitação de Serviços|
#     Preencher Tipo de OS e Bem Patrimonial |ELETIVA| |BEM AGREGADO - BEM AGREGADO - MARCA|
#     Preencher Descricao |DESCRICAO TESTE AUTOMACAO|
#     Preencher Campos Obrigatorios |OFICINA DE TRABALHO| |3333-4444| |soulmv@mv.com.br| |Alta|
#     Salvar Solicitacao de Servico |Atenção: Existem solicitações de serviços em aberta(s) para este Bem.| |Registros gravados com sucesso|
#     Convert To String         ${CampoCodSolicTelaSolic}
#     ${RecebeCodSolic}         SeleniumLibrary.Get Text    ${CampoCodSolicTelaSolic}
#     Click Elemento por titulo                    Sair
#     Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Recebimento de Solicitações"@nprint @no
#     Validar Acesso a Tela |${NomeTela}|
#     Realizar Consulta Pelo Codigo de Solicitacao |${RecebeCodSolic}|

#### ------------------------------------------------------------- ####

Realizar Consulta Pelo Codigo de Solicitacao |${RecebeCodSolic}|
    Click Elemento por titulo                    Procurar
    Preencher Campo                              ${CampoCodSolic}            ${RecebeCodSolic}  
    Click Elemento por titulo                    Executar Consulta

Validar Dados da Solicitacao
    Validar Elemento Pelo Titulo                 DESCRICAO TESTE AUTOMACAO
    Validar Elemento Pelo Titulo                 ALMOXARIFADO
    Validar Elemento Pelo Titulo                 ANDREVASCONCELOS

Preencher Campos Sem Preenchimento
    Selecionar Item Na Lista                 ${BotaoLovFuncResp}             GPINA                    GPINA
    # ${RecebeFuncionario}            SeleniumLibrary.Get Text     ${CampoFuncionario}
    # IF      ${RecebeFuncionario} == 'GPINA'
    #     Selecionar Item Na Lista                 ${BotaoLovFuncResp}         ANDREVASCONCELOS         ANDREVASCONCELOS
    # ELSE 
    #     Selecionar Item Na Lista                 ${BotaoLovFuncResp}         GPINA                    GPINA
    # END

Salvar Alteracoes
    Click Elemento por titulo                    Salvar
    Valida Mensagem                              ${MensagemToast}            Atenção: Deseja salvar?
    Click no Item                                ${BotaoSim}
    Valida Mensagem                              ${MensagemToast}            Registros gravados com sucesso

Clicar Checkbox 'Recebida'
    Marcar Checkbox |${CbRecebida}|

Clicar Botao Ordem de Servico
    Click no Item                                ${BotaoOrdemServico}
    Valida Mensagem                              ${MensagemToast}            Atenção: Não haverá envio de email no processo de recebimento pois esta oficina está configurada para não enviar email.
    Click no Item                                ${BotaoOk}
    Validar Acesso a Tela |Ordem de Serviço|
    Click Elemento por titulo                    Sair
    Valida Mensagem                              ${MensagemToast}            Pretende gravar as alterações efetuadas?
    Click no Item                                ${BotaoNao}
    Valida Mensagem                              ${MensagemToast}            Registros gravados com sucesso
    








    