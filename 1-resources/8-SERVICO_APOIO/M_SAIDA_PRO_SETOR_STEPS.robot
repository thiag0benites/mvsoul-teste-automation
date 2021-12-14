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
Preencha os dados <Menu>, <Portador>, <Transportador>, <Solicitante>, <Motivo>
    Preencher Campo                    ${CampoMenu}                    1
    Click no Item                      ${BtnAcessar}  
    Preencher Campo                    ${CampoPortador}                1    
    Preencher Campo                    ${CampoTransportador}           20
    Preencher Campo                    ${CampoSolicitante}             Gael Ribeiro
    Preencher Campo                    ${CampoMotivo}                  teste