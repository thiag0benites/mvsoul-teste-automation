##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Orçamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovAtendimento}                    xpath=//div[@id="cdAtendimento"]/button
${CampoDtInicial}                         xpath=//input[@id="inp:dtInicPeriodo"]
${CampoDtFinal}                           xpath=//input[@id="inp:dtTermPeriodo"]
${BotaoLovConvenio}                       xpath=//div[@id="cdConvenio"]/button
${AbaProcedimento}                        xpath=//a[@id="CGPAGE_2_CGPAGE_2_tab2"]
${BotaoLovEdit}                           xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button     
${AbaCusto}                               xpath=//a[@id="CGPAGE_2_CGPAGE_2_tab3"]
${CampoUnidade}                           xpath=//div[@data-member="DS_UNIDADE"][@class="ui-text"]/..
${CampoEdit}                              xpath=//input[@class="editor-text mode-edit"]  
${CampoValorUnitario}                     xpath=//div[@data-member="VL_CUSTO_UNITARIO"]/..         
${CampoQuantidade}                        xpath=//div[@data-member="QT_TIPO_CUSTO"]/..         
${AbaImposto}                             xpath=//a[@id="CGPAGE_2_CGPAGE_2_tab4"]
${CampoCdOrcamento}                       xpath=//input[@id="inp:cdOrcamento2"] 
