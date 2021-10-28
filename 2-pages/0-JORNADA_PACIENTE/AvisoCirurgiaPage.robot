##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${btnPesquisar}    xpath=//i[@class="mv-basico-pesquisar"]
${txtCodAvisoCir}    id=inp:cdAvisoCirurgia