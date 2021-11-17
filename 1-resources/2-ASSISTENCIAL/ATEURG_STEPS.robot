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

Acessa a Tela Pela Busca
    Unselect Frame
    Click Element                           ${BotaoBuscaTela}
    Preencher Campo                         ${CampoBuscaTela}                   ATEURG
    Click Elemento por titulo               Atendimento
    Seleciona frame                         ${IdIframe}                         180

Clicar Botao Paciente
    Click no Item                           ${BotaoPaciente}

Pesquisar Pelo Paciente
    Preencher Campo                         ${CampoPaciente}                    ACACIA MARIA MAIA COSTA
    Click Elemento por titulo               Executar Consulta 
    Validar Elemento Pelo Titulo            505146
    Click no Item                           ${BotaoAtender}

Preencher Campos Obrigatorios
    #Click no Item                           ${BotaoSimValidAtend}    ### Usado para atendimento criado com menos de 24h
    Selecionar Item Na Lista                ${BotaoLovPrestador}                GEISHA ABREU SOARES DE PINA         GEISHA ABREU SOARES DE PINA
    Selecionar Item Na Lista                ${BotaoLovOrigem}                   ORIGEM URGENCIA                     ORIGEM URGENCIA
    Selecionar Item Na Lista                ${BotaoLovLocalProced}              DOMICILIO                           DOMICILIO
    Selecionar Item Na Lista                ${BotaoLovDestino}                  CONSULTORIO MEDICO                  CONSULTORIO MEDICO
    Selecionar Item Na Lista                ${BotaoLovTipoPaciente}             EMERGENCIA ADULTO                   EMERGENCIA ADULTO
    Selecionar Item Na Lista                ${BotaoLovServico}                  CARDIOLOGIA CLINICA                 CARDIOLOGIA CLINICA
    Preencher Campo                         ${CampoCID}                         R100
    Selecionar Item Na Lista                ${BotaoLovProced}     BIÓPSIA HEPÁTICA (PERCUTÂNEA/LAPAROSCÓPICA)       BIÓPSIA HEPÁTICA (PERCUTÂNEA/LAPAROSCÓPICA)                

Clicar Botao Carteira
    Click no Item                           ${BotaoCarteira} 

Validar Informacoes Carteira
    Validar Elemento Pelo Titulo            999325208340007                       
    Validar Elemento Pelo Titulo            30/10/2023 
    Click no Item                           ${BotaoSelecionar} 

Confirmar Atendimento  
    Click Elemento por titulo               Salvar
    #Click no Item                           ${BotaoSimValidAtend}    ### Usado para atendimento criado com menos de 24h
    #Click no Item                           ${BotaoSimValidAtend}
    #Click no Item                           ${BotaoSimValidAtend}
    Click no Item                           ${BotaoOKConfAtend}
    Valida Mensagem                         ${MensagemSucesso}                  Registro Salvo com Sucesso!




