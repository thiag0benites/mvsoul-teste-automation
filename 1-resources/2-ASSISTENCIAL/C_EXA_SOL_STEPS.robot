##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/C_EXA_SOL_PAGE.robot

*** Keywords ***
Consulta de Exames Solicitados |${Data}|
    Preencher campo    ${CampoData}    ${Data}
    Clicar no botão Executar
    Validar Item    ${DivAtendimento}
    Validar Item    ${DivExame}
