##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consumo do Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_PRODATEND_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Selecionar Paciente
    Click no Item                    ${BotaoLovPaciente} 
    Validar Acesso a Tela |Consulta Atendimentos|
    Marcar Checkbox |${CbPacInternacao}|
    Click Elemento por titulo        Executar Consulta
    Click no Item                    ${BotaoConfirmar}

Realizar Consulta de Consumo
    Click Elemento por titulo        Executar Consulta

Validar Consulta de Consumo
    Validar Elemento Pelo Titulo     AADA TEIXEIRA PINTO MARTINS
    Validar Elemento Pelo Titulo     AADBR UNIDADE INTERNAÇÃO
    Validar Elemento Pelo Titulo     PRONTO SOCORRO
    Validar Elemento Pelo Titulo     AAS 500MG COMP-ACIDO ACETILSALICILICO
    
    


