##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Saída de documentos 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SAIDA_PRO_SETOR_PAGE.robot
Resource    ../6-CONTROLADORIA/M_PREST_CONTAS_STEPS.robot


*** Variable ***

*** Keywords ***
Preencha os dados <Menu> |${Menu}|, <Portador> |${Portador}|, <Transportador> |${Transportador}|, <Solicitante> |${Solicitante}|, <Motivo> |${Motivo}| |${Atendimento}| |${MsgVerificada}|
    Preencher Campo                    ${CampoMenu}                    ${Menu}
    Click no Item                      ${BtnAcessar}  
    Preencher Campo                    ${CampoPortador}                ${Portador}    
    Preencher Campo                    ${CampoTransportador}           ${Transportador}
    Preencher Campo                    ${CampoSolicitante}             ${Solicitante}
    Preencher Campo                    ${CampoMotivo}                  ${Motivo}
    Preencher Campo                    ${CampoAtendimento}             ${Atendimento}
    Click no Item                      ${BtnConfirma}  
    Click no Item                      ${BtnSim}   
    Validar Informacao Item            ${MsgLida}                      ${MsgVerificada}