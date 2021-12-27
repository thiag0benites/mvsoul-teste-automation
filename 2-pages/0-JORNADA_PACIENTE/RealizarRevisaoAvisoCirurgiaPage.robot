##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da página Realizar revisao de dados pelo aviso de cirurgia
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Consulta de Cadastro de Paciente
${divCodAvisoCirurgia}    xpath=(//div[@class='slick-cell b0 f0 selected ui-fixed-width'])[2]
${inputCodAvisoCirurgia}    xpath=//input[@class='editor-text mode-search']
