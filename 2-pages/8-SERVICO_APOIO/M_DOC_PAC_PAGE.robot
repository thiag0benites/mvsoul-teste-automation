##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Matricula no Same
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoSame}      xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}    xpath=//button[@id="ok"]
${CampoMatricula}    xpath=//input[@id="inp:nrMatriculaSame"]
${BotaoImpEt}     xpath=//button[@id="btnImprEtq"]
${BotaoImprimirFim}    xpath=//button[@data-member="BTN_IMPRIMIR"]
