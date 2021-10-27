##################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Variable ***

${ButtonEstoque}                 xpath=//div[@data-member='CD_ESTOQUE']/button
${EstoqueInput}                  xpath=//input[@for="filterLov"]
${BotaoFiltrar}                  xpath=//button[@id="btfilter"]
${SelectFarmacia}                xpath=//button[@id='btok']
${ClickLupa}				     xpath=//span[@class="ui-icon mv-basico-pesquisar"]
${CampoNome}                     xpath=//div[@class='slick-viewport slick-viewport-top slick-viewport-left']//div[@class='slick-cell b2 f2 selected']//div[@data-member='NM_PACIENTE']/..
${InputPaciente}                 xpath=//div//input[@class='editor-text mode-search']    
${BotaoExecutar}                 xpath=//i[@class='mv-basico-confirmar']                
${BotaoConfirmar}                xpath=//button[@data-action='btnConfirmar_click']     
${BotaoMotivo}                   xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[5]
${SelectMotivo}					 xpath=//div[@title="ALTERACAO DA PRESCRICAO"]
${BotaoOk}                       xpath=//button[@id='btok']
${CampoObsInput}                 xpath=//textarea[@name="dsObsEmprestimo"] 
${CampoSim}                      xpath=//button[@class='btn btn-primary'][2]
${CampoCodInput}			     xpath=//input[@style='height: 22px; text-transform: uppercase; text-align: center;']
${CampoCod}                      xpath=//div[@class="slick-cell b0 f0 selected"]
${BtnSeguinte}                   xpath=//a[@title='Seguinte']
${CodProduto}                    xpath=//button[@data-member='BTN_CD_PRODUTO']
${CampoProduto}                  xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']/input
${CampoQntdeInput}               xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${BtnProdutoL2}                  xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${InputProduto}                  xpath=//input[@class='filterinput']
${InputQntde2}                   xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${CampoBtnUnidade}               xpath=//div[@class='slick-cell b5 f5 selected']//div[@data-member='DSP_DS_UNIDADE']
${BtnUnidade}                    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']//span[1]
${SelectUnidade}                 xpath=//div[@title='MILILITRO']
${BtnSelecionarProduto}          xpath=//button[@style='vertical-align: top; width: 22px; height: 22px; right: 0px;']
${SelectProd3}                   xpath=//div[@class='ui-widget-content slick-row even']//div[@class='slick-cell b0 f0 selected']
${InputQntde3}                   xpath=//div[@class='slick-cell b6 f6 selected active editable']/input

${InputProdutoCod}               xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input
${InputQntde4}                   xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${CampoBtnUnidade4}              xpath=//div[@class='slick-cell b5 f5 selected']//div[@class='ui-text']
${BtnUnidade4}                   xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${SelectUnidade4}                xpath=//div[@title='MILIGRAMA']
${InputQntde5}                   xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${CampoBtnUnidade5}              xpath=//div[@class='slick-cell b5 f5 selected']//div[@data-member='DSP_DS_UNIDADE']
${BtnUnidade5}                   xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${SelectUnidade5}                xpath=//div[@class='slick-cell b0 f0']//div[@title='MILIGRAMA']
${InputQntde6}                   xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${Salvar}                        xpath=//a[@title='Salvar']//i[@class='mv-basico-salvar']
${Nao}                           xpath=
${Imprimir}                      xpath=
${Confirmar}                     xpath=




