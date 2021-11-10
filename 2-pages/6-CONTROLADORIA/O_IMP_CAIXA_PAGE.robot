##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de O_IMP_CAIXA.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3



        

${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenLiberacaoCaixa}                  xpath=//section[@id='workspace-menubar']//a[@title='Caixa']//span

${campoPeriodoInicial}                   id=inp:dtInicio
${inputPeriodoInicial}                   id=inp:dtInicio

${campoPeriodoFinal}                     id=inp:dtFim
${inputPeriodoFinal}                     id=inp:dtFim

${btnLiberar}                            id=butImportar 

# ${CampoTipo}                             xpath=//div[@class='slick-cell b3 f3 selected']
# ${inputTipo}                             xpath=//div[@class="slick-cell b3 f3 selected active editable"]//input[@row='1']

${checkboxAtivo}                         xpath=//div[@class='slick-cell b4 f4 slick-last-cell selected']//button[@data-row='1']


${campoCodEmpresaAssociada}              xpath=//*[@id="grdPlanoEmp"]/div[4]/div[3]/div/div/div[1]
${inputCodEmpresaAssociada}              xpath=/html/body/div[2]/div/div[2]/div/div/form/div/div/div/div/fieldset[2]/div/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div/input


${btnOk}                                //button[contains(text(),"OK")]
${btnConfirmar}                         id=btnConfirma

${mensagemLiberacaoCaixa}                xpath=/html/body/nav[5]/div/div[2]/ul/li[1]/ul/li[2]/div/div[2]/p

