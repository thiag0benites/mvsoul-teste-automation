##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Cadastro de Pre-Internacao
${btn}    xpath=//i[@class="mv-basico-<elemento>"]
${txtInputAvisoCirurgia}    name=cdAvisoCirurgia