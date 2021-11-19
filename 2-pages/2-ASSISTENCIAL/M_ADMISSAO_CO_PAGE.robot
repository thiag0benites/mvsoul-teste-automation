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
${CampoFiltroAtend}              xpath=//input[@class='filterinput']
${CampoDataInicial}              xpath=//input[@id='inp:admissaoCo_dtParto']
${CampoTipoParto}                xpath=//input[@id='inp:cdTipParto']
${CampoFIltoParto}               xpath=//input[@id='#filterLov']
${CampoMotivoParto}              xpath=//input[@id='inp:cdMotivoParto']
${CampoQtdFilhos}                xpath=//input[@id='inp:admissaoCo_nrFilhosNoParto']
${CampoQtdSemanas}               xpath=//input[@id='inp:qtSemanas']
${CampoTipoAnestesia}            xpath=//input[@id='inp:cdTipAnest']
${CampoDataHoraRN}               xpath=//input[@id='inp:hrNascimento']
${CampoTipoSexo}                 xpath=//input[@id='tpSexo_ac']
${CampoNroPulseira}              xpath=//input[@id='inp:nrPulseira']
${DeclNascidoVivo}               xpath=//input[@id='inp:cdDeclaracaoNascidoVivo']
${Apgar1Min}                     xpath=//input[@id='inp:vlApgar1minuto']
${Apgar5Min}                     xpath=//input[@id='inp:vlApgar5minuto']
${PerimetroCefalico}             xpath=//input[@id='inp:vlPerimetroCefalico']
${PerimetroToracico}             xpath=//input[@id='inp:vlPerimetroToraxico']
${PerimetroAbdominal}            xpath=//input[@id='inp:vlPerimetroAbdominal']
${MedidaAltura}                  xpath=//input[@id='inp:vlAltura']
${MedidaPeso}                    xpath=//input[@id='inp:vlPeso']
${CampoPediatraResp}             xpath=//input[@id='inp:cdPrestador']
${CampoLeito}                    xpath=//input[@id='inp:cdLeito']
${CampoServicoLeito}             xpath=//input[@id='inp:cdServico']

### Botoes ###
${BtnSetaAtendimento}            xpath=//*[@id="admissaoCo_cdAtendimento"]/button
${BtnFiltrar}                    xpath=//button[@id='btfilter']
${BtnOk}                         xpath=//button[@id='btok']
${BtnSair}                       xpath=//button[@id='btnSaiTiss']
${BotaoDataInicial}              xpath=//*[@id="admissaoCo_dtParto"]/button
${BtnTipoParto}                  xpath=//*[@id="cdTipParto"]/button
${BtnMotivoParto}                xpath=//*[@id="cdMotivoParto"]/button
${BtnTipoAnest}                  xpath=//*[@id="cdTipAnest"]/button
${BtnObstetricia}                xpath=//button[@id='butObstetricia']
${CheckBoxPartoNormal}           xpath=//button[@id='inp:snNormalTiss_btn']
${BtnRecemNascido}               xpath=//button[@id='butRecemNascido']
${BtnTipoSexo}                   xpath=//*[@id="tpSexo"]/button
${BtnRegistroCivil}              xpath=//button[@id='btnRegCivil']
${BtnPediatraResp}               xpath=//*[@id="cdPrestador"]/button
${BtnLeito}                      xpath=//*[@id="cdLeito"]/button
${BtnServico}                    xpath=//*[@id="cdServico"]/button
${BtnSalvar}                     xpath=//li[@id='tb-record-save']  
${BtnOkMensagem}                 xpath=//button[@class='btn btn-primary']                

### Diversos ###
${SelecionaAtendimento}          xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[1]/div
${SelecionaTipoParto}            xpath=//div[@class='ui-widget-content slick-row even']
${SelecionaLeito}                xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[2]
${MensagemValidacao}             xpath=//p[@class='notifications-item-text'][contains(text(),'Registros gravados com sucesso')]
