##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa
### Campos ###
${CampoAtendimento}        xpath=//*[@id="inp:cdAtendimento"]
${IdeCodigoAviso}          xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[1]
${CampoCodigoAviso}        xpath=//*[@id="#frames36"]
${CampoDataInicial}        xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${CampoDataFinal}          xpath=//input[@formcontrolname='end']
${CampoTransHora}          xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[3]
${CampoCentCirData}        xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[4]
${CampoCentCirHora}        xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[5]
${LocalTranfPosCir}        xpath=//input[@class='ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left']
${CampoRecAnestSetor}      xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[6]/div
${CampoDataRecPosAnest}    xpath=//div[@data-member='DT_ENTRADA_RPA']
${CampoTextoDataPosAnes}   xpath=//*[@id="frames821634847023469"]
${CampoHoraPosAnest}       xpath=//div[@data-member='HR_ENTRADA_RPA_AUX']
${CampoTextoHoraPosAnest}  xpath=//input[@class='editor-text mode-edit']
${CampoDataFinalPos}       xpath=//*[@id="grdMovCcRpa1"]/div[4]/div[3]/div/div/div[10]
${CampoHoraSaidAPosAnt}    xpath=//div[@data-member='HR_SAIDA_RPA_AUX']
${CampoTextoHoraFinalPos}  xpath=//input[@class='editor-text mode-edit']



### Botoes ###
${BtnExecutarConsulta}     xpath=//i[@class="mv-basico-confirmar"]  
${BtnListaCodigoAviso}     xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnOk}                   xpath=//button[@id='btok']
${BotaoDataFinal}          xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/app-attachment-page/mat-drawer-container/mat-drawer/div/app-attachment-drawer/mv-toolbar/mv-toolbar-row[3]/mv-form-field[2]/div[1]/div/div[2]/mat-datepicker-toggle/button
${BotaoDataInicial}        xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${SetaDoCalendario}        xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${SetaLocalTransfCir}      xpath=//span[@class='ui-button-icon ui-icon mv-basico-seta_baixo_simples']
${BtnListaAnestSetor}      xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${btnSalvar}               xpath=//li[@id='tb-record-save']

### Elementos Diversos ###
${TabelaCodigoAviso}       xpath=//div[@class='ui-widget-content slick-row even']
${SetaDoCalendario}        xpath=//div[@class='mat-calendar-arrow']
${BotaoDataFinal}          xpath=/html/body/pep-app/mat-sidenav-container/mat-sidenav-content/mv-sidenav-container/section/div/div/pep-portal/pep-medical-record/pep-medical-record-content/div/div/app-attachment-page/mat-drawer-container/mat-drawer/div/app-attachment-drawer/mv-toolbar/mv-toolbar-row[3]/mv-form-field[2]/div[1]/div/div[2]/mat-datepicker-toggle/button
${ListaSetorPosAnest}      xpath=//div[@title='AMBULATORIO HOBRA']
