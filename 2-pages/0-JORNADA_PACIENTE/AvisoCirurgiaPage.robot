##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${txtCodAvisoCir}    id=inp:cdAvisoCirurgia
${dtInicioAnestesia}    xpath=//input[@id='inp:dtInicioAnestesia']
${dtInicioCirurgia}    xpath=//input[@id='inp:dtInicioCirurgia']
${dtFimCirurgia}    xpath=//input[@id=inp:'dtFimCirurgia']
${dtFimAnestesia}    xpath=//input[@id=inp:'dtFimAnestesia']
${dtSaidaSala}    xpath=//input[@id=inp:'dtSaidaSala']
${dtInicioLimpeza}    xpath=//input[@id=inp:'dtInicioLimpeza']
${dtFimLimpeza}    xpath=//input[@id=inp:'dtFimLimpeza']