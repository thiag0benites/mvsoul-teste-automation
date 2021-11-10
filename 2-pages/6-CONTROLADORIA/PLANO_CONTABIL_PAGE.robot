##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de Plano Contábil.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3



        

${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenPlanosContabeis}                 xpath=//section[@id='workspace-menubar']//a[@title='Planos Contábeis']//span

${inputCodigo}                           xpath=//div[@class="slick-cell b0 f0 selected active editable"]//input[@row='1']

${campoDescricao}                        xpath=//div[@class='slick-cell b1 f1 selected']
${inputDescricao}                        xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input[@row='1']
${campoMascara}                          xpath=//div[@class='slick-cell b2 f2 selected']
${inputMascara}                          xpath=//div[@class="slick-cell b2 f2 selected active editable"]//input[@row='1']
${CampoTipo}                             xpath=//div[@class='slick-cell b3 f3 selected']
${inputTipo}                             xpath=//div[@class="slick-cell b3 f3 selected active editable"]//input[@row='1']

${checkboxAtivo}                         xpath=//div[@class='slick-cell b4 f4 slick-last-cell selected']//button[@data-row='1']

${campoCodEmpresaAssociada}              xpath=//*[@id="grdPlanoEmp"]/div[4]/div[3]/div/div/div[1]
${inputCodEmpresaAssociada}              xpath=/html/body/div[2]/div/div[2]/div/div/form/div/div/div/div/fieldset[2]/div/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div/input


${btnOk}                                //button[contains(text(),"OK")]
${btnConfirmar}                         id=btnConfirma

${mensagemPlanoContabil}                xpath=//div[@class="notifications-item"]

