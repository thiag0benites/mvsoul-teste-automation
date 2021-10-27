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
    # Click no Item                           ${ListaConfig}
    # Click no Item                           ${SelecNao}
    Select From List By Value               ${SelecNao}                         Não
    Click Elemento por titulo               Salvar

Clicar Botao Paciente
    Click no Item                           ${BotaoPaciente}

Pesquisar Pelo Paciente
    Preencher Campo                         ${CampoPaciente}                    ACACIA MARIA MAIA COSTA
    Click Elemento por titulo               Executar Consulta 
    Validar Elemento Pelo Titulo            505146
    Click no Item                           ${BotaoAtender}

Preencher Campos Obrigatorios
    Click no Item                           ${BotaoLovPrestador}
    Selecionar Item Na Lista                GEISHA ABREU SOARES DE PINA         GEISHA ABREU SOARES DE PINA
    Click no Item                           ${BotaoLovOrigem}
    Selecionar Item Na Lista                ORIGEM URGENCIA                     ORIGEM URGENCIA
    Click no Item                           ${BotaoLovLocalProced}
    Selecionar Item Na Lista                DOMICILIO                           DOMICILIO
    Click no Item                           ${BotaoLovDestino}
    Selecionar Item Na Lista                CONSULTORIO MEDICO                  CONSULTORIO MEDICO
    Click no Item                           ${BotaoLovTipoPaciente}
    Selecionar Item Na Lista                EMERGENCIA ADULTO                   EMERGENCIA ADULTO
    Click no Item                           ${BotaoLovServico}
    Selecionar Item Na Lista                CARDIOLOGIA CLINICA                 CARDIOLOGIA CLINICA
    Click no Item                           ${BotaoLovCID}
    Selecionar Item Na Lista                ABDOME AGUDO                        ABDOME AGUDO
    Click no Item                           ${BotaoLovProced}
    Selecionar Item Na Lista                BIÓPSIA DE NERVO                    BIÓPSIA DE NERVO 

Clicar Botao Carteira
    Click no Item                           ${BotaoCarteira} 

Validar Informacoes Carteira
    Validar Elemento Pelo Titulo            999325208340007                       
    Validar Elemento Pelo Titulo            30/10/2023 
    Click no Item                           ${BotaoSelecionar} 





