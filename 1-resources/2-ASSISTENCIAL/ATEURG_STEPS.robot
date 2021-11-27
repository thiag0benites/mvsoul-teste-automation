##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Atendimento de Urgência/Emergência
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/ATEURG_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Configuracao de Acesso a Tela
    Acessar a tela "Atendimento>Internação>Configurações>Parâmetros"@nprint @las
    Validar Acesso a Tela |Configurações do Sistema de Internação|
    Click no Item                           ${AbaAssocAtendimento}
    Wait Until Element Is Visible           ${CampoConfig}                      20    
    Preencher Campo                         ${CampoConfig}                      Não
    Click Elemento por titulo               Salvar
    Click Elemento por titulo               Sair  

Clicar Botao Paciente
    Click no Item                           ${BotaoPaciente}

Pesquisar Pelo Paciente |${Paciente}| |${CdPaciente}|
    Preencher Campo                         ${CampoPaciente}                    ${Paciente}
    Click Elemento por titulo               Executar Consulta 
    Validar Elemento Pelo Titulo            ${CdPaciente}
    Click no Item                           ${BotaoAtender}

Preencher Campos Obrigatorios |${Medico}| |${Origem}| |${LocalProc}| |${Destino}| |${TipoPaciente}| |${Servico}| |${CID}| |${Procedimento}|
    #Click no Item                           ${BotaoSimValidAtend}    ### Usado para atendimento criado com menos de 24h
    Selecionar Item Na Lista                ${BotaoLovPrestador}                ${Medico}             ${Medico}
    Selecionar Item Na Lista                ${BotaoLovOrigem}                   ${Origem}             ${Origem}
    Selecionar Item Na Lista                ${BotaoLovLocalProced}              ${LocalProc}          ${LocalProc}
    Selecionar Item Na Lista                ${BotaoLovDestino}                  ${Destino}            ${Destino}
    Selecionar Item Na Lista                ${BotaoLovTipoPaciente}             ${TipoPaciente}       ${TipoPaciente}
    Selecionar Item Na Lista                ${BotaoLovServico}                  ${Servico}            ${Servico}
    Preencher Campo                         ${CampoCID}                         ${CID}
    Selecionar Item Na Lista                ${BotaoLovProced}                   ${Procedimento}       ${Procedimento}

Clicar Botao Carteira
    Click no Item                           ${BotaoCarteira} 

Validar Informacoes Carteira |${NumCarteira}| |${ValidadeCarteira}|
    Validar Elemento Pelo Titulo            ${NumCarteira}                       
    Validar Elemento Pelo Titulo            ${ValidadeCarteira} 
    Click no Item                           ${BotaoSelecionar} 

Confirmar Atendimento |${MensagemSucesso}|
    Click Elemento por titulo               Salvar
    #Click no Item                           ${BotaoSimValidAtend}    ### Usado para atendimento criado com menos de 24h
    #Click no Item                           ${BotaoSimValidAtend}
    #Click no Item                           ${BotaoSimValidAtend}
    Click no Item                           ${BotaoOKConfAtend}
    Valida Mensagem                         ${MensagemToast}                    ${MensagemSucesso}




