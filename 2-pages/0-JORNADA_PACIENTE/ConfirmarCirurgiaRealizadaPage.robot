##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da página de Cadastro do Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Cadastro de Paciente

#Inputs
${inputDtHrEntradaSala}    xpath=//input[@id='inp:dtEntradaSala']
${inputDtHrIniCirurgia}    xpath=//input[@id='inp:dtInicioCirurgia']
${inputDtHrSaidaSala}      xpath=//input[@id='inp:dtSaidaSala']
${inputDtHhIniAnestesia}   xpath=//input[@id='inp:dtInicioAnestesia']
${inputDtHhFimAnestesia}   xpath=//input[@id='inp:dtFimAnestesia']
${inputFiltroTela}         xpath=//input[@id='#filterLov']
${inputHrRecPosAnest}      xpath=//input[@class='editor-text mode-edit']

${divDtHrEntradaSala}      xpath=//div[@data-name='dtEntradaSala']
${divDtHrIniAnestesia}     xpath=//div[@data-name="dtInicioAnestesia"]
${divDtHrIniCirurgia}      xpath=//div[@data-name='dtInicioCirurgia']
${divDtHrFimCirurgia}      xpath=//div[@data-name='dtFimCirurgia']
${divDtHrFimAnestesia}     xpath=//div[@data-name='dtFimAnestesia']
${divDtHrSaidaSala}        xpath=//div[@data-name='dtSaidaSala']
${divDtHrIniLimpeza}       xpath=//div[@data-name='dtInicioLimpeza']
${divDtHrFimLimpeza}       xpath=//div[@data-name='dtFimLimpeza']
${tabTranfCentroCir}       xpath=(//li[@class="tab-item"])[2]
${selectLocalTranfCir}     xpath=//input[@id='dsLocalTransfPosCir_ac']
${divRecPosSetor}          xpath=//div[@title='APARTAMENTO - UNID 01']
${divRecPosAnestesia}      xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']
${divDtRecPosAnestEnt}     xpath=//div[@class='slick-cell b7 f7 selected ui-fixed-width active editable']
${divDtRecPosAnestSaida}   xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width active editable']
${divHrRecPosAnest}        xpath=//div[@data-member='HR_ENTRADA_RPA_AUX']




