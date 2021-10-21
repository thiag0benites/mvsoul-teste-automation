##################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Elementos e metodos da tela de Solicitação de Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource         ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}    3
${inputSolicitacao}    xpath=//div[@class="ui-widget-content slick-row even active"]//input
${btnVisualizarProdutos}    id=btnVisualizarOsProdutos



#     Click Element    xpath=(//span[@class="menu-node-text"])[11]
#     Click Link      xpath=//input[@class="editor-text mode-search"]
#     Click Element    xpath=(//span[@class="menu-node-text"])[15]
#     Input Text    //input[@id="#frames119"]    2304495
#     Click Element    //i[@class="mv-basico-confirmar"]
#     Click Element    //button[@id="btnVisualizarOsProdutos"]
#     Click Element    //button[@id="btnRetorna"]
#     Click Element    xpath=(//span)[74]
#     Click Element    xpath=(//div[@title="7954"])[7]
#     Click Element    //div[@title="7896676432916"]
#     Click Element    xpath=(//span)[208]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    //div[@class="ui-widget-overlay ui-front"]
#     Input Text    //input[@for="filterLov"]    %agua%destilada%
#     Click Element    xpath=(//span)[266]
#     Click Element    //div[@title="AGUA DESTILADA 10ML AMP"]
#     Click Element    //div[@title="AGUA DESTILADA 10ML AMP"]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames175"]    4
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %ambroxol%
#     Click Element    xpath=(//fieldset)[18]
#     Click Element    xpath=(//span)[278]
#     Click Element    //div[@title="AMBROXOL 6MG/ML-120ML FR XPE"]
#     Click Element    //div[@title="AMBROXOL 6MG/ML-120ML FR XPE"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="LJJHF77767"])[2]
#     Click Element    xpath=(//div[@title="LJJHF77767"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILILITRO"])[2]
#     Click Element    xpath=(//div[@title="MILILITRO"])[2]
#     Input Text    //input[@id="#frames185"]    2
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %zitromax%
#     Click Element    xpath=(//span)[290]
#     Click Element    //div[@title="ZITROMAX 500MG COMP REV- AZITROMICINA"]
#     Click Element    //div[@title="ZITROMAX 500MG COMP REV- AZITROMICINA"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L098876544"])[2]
#     Click Element    xpath=(//div[@title="L098876544"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[5]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[5]
#     Input Text    //input[@id="#frames195"]    2
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %profenid%
#     Click Element    xpath=(//span)[302]
#     Click Element    //div[@title="PROFENID 100MG FR/AMP IV-CETOPROFENO"]
#     Click Element    //div[@title="PROFENID 100MG FR/AMP IV-CETOPROFENO"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    //div[@title="L999117"]
#     Click Element    //div[@title="L999117"]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames204"]    1
#     Click Element    //button[@id="frames207"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %cloreto%sodio%
#     Click Element    xpath=(//span)[314]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-1000ML ISENTO PVC IV"]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-1000ML ISENTO PVC IV"]
#     Click Element    //button[@id="frames213"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %cloreto%sodio%
#     Click Element    xpath=(//span)[314]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-100ML ISENTO PVC IV"]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-100ML ISENTO PVC IV"]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames223"]    3
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %precedex%
#     Click Element    xpath=(//span)[326]
#     Click Element    //div[@title="PRECEDEX 100MCG/ML-2ML FR/AMP IV-DEXMEDETOMIDINA"]
#     Click Element    //div[@title="PRECEDEX 100MCG/ML-2ML FR/AMP IV-DEXMEDETOMIDINA"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    //div[@title="L999118"]
#     Click Element    //div[@title="L999118"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    //div[@title="MICROGRAMA"]
#     Click Element    //div[@title="MICROGRAMA"]
#     Input Text    //input[@id="#frames233"]    1
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %motilum%
#     Click Element    //button[@id="btfilter"]
#     Input Text    //input[@for="filterLov"]    %motilium%
#     Click Element    xpath=(//span)[338]
#     Click Element    //div[@title="MOTILIUM 10MG COMP- DOMPERIDONA"]
#     Click Element    //div[@title="MOTILIUM 10MG COMP- DOMPERIDONA"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L98765445678"])[2]
#     Click Element    xpath=(//div[@title="L98765445678"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[6]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[6]
#     Input Text    //input[@id="#frames243"]    3
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %buscopa%
#     Click Element    xpath=(//span)[350]
#     Click Element    //div[@title="BUSCOPAN 20MG/ML-1ML AMP IV/IM/SC-ESCOPOLAMINA"]
#     Click Element    //div[@title="BUSCOPAN 20MG/ML-1ML AMP IV/IM/SC-ESCOPOLAMINA"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L999116"])[2]
#     Click Element    xpath=(//div[@title="L999116"])[2]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames252"]    1
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %lasix%
#     Click Element    xpath=(//span)[362]
#     Click Element    //div[@title="LASIX 10MG/ML-2ML AMP IV-FUROSEMIDA"]
#     Click Element    //div[@title="LASIX 10MG/ML-2ML AMP IV-FUROSEMIDA"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//span)[383]
#     Click Link    //a[@title="Apagar"]
#     Click Element    //i[@class="mv-basico-adicionar"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %lorax%
#     Click Element    xpath=(//span)[362]
#     Click Element    //div[@title="LORAX 1MG COMP-LORAZEPAM"]
#     Click Element    //div[@title="LORAX 1MG COMP-LORAZEPAM"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L9987777"])[2]
#     Click Element    xpath=(//div[@title="L9987777"])[2]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames269"]    2
#     Click Element    //div[@title="COMP C/1MG"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[7]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[7]
#     Click Element    //i[@class="mv-basico-adicionar"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %plasil%
#     Click Element    xpath=(//span)[362]
#     Click Element    xpath=(//div[@title="PLASIL 5MG/ML-2ML AMP IM/IV-METOCLOPRAMIDA"])[2]
#     Click Element    xpath=(//div[@title="PLASIL 5MG/ML-2ML AMP IM/IV-METOCLOPRAMIDA"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L888009"])[2]
#     Click Element    xpath=(//div[@title="L888009"])[2]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames283"]    2
#     Click Element    //button[@id="frames285"]
#     Input Text    //input[@id="#frames287"]    1
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %morfina%
#     Click Element    xpath=(//span)[362]
#     Click Element    xpath=(//div[@class="slick-cell b0 f0"])[18]
#     Click Element    //div[@class="slick-cell b0 f0 selected active"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="LHHGT6675"])[2]
#     Click Element    xpath=(//div[@title="LHHGT6675"])[2]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames297"]    3
#     Click Element    xpath=(//div[@title="AMP C/10MG"])[3]
#     Click Element    //div[@class="blockUI blockOverlay"]
#     Click Element    //button[@id="frames301"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[8]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[8]
#     Click Element    xpath=(//div[@title="2462"])[2]
#     Click Link    //a[@title="Adicionar"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %dobutrex%
#     Click Element    xpath=(//span)[362]
#     Click Element    xpath=(//div[@title="DOBUTREX 12,5MG/ML-20ML AMP IV-DOBUTAMINA"])[2]
#     Click Element    xpath=(//div[@title="DOBUTREX 12,5MG/ML-20ML AMP IV-DOBUTAMINA"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L0000987899"])[2]
#     Click Element    xpath=(//div[@title="L0000987899"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[9]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[9]
#     Input Text    //input[@id="#frames318"]    2
#     Click Element    //button[@id="frames321"]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %oxigen%
#     Click Element    xpath=(//span)[362]
#     Click Element    xpath=(//div[@title="OXIGEN 30MG COMP-NIMODIPINO"])[2]
#     Click Element    xpath=(//div[@title="OXIGEN 30MG COMP-NIMODIPINO"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="L1234356"])[2]
#     Click Element    xpath=(//div[@title="L1234356"])[2]
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[9]
#     Click Element    xpath=(//div[@title="MILIGRAMA"])[9]
#     Input Text    //input[@id="#frames332"]    1
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %agulha%
#     Click Element    xpath=(//span)[362]
#     Input Text    //input[@for="filterLov"]    %agulha%5%
#     Click Element    xpath=(//span)[362]
#     Input Text    //input[@for="filterLov"]    %agulha%5%descart%
#     Click Element    xpath=(//span)[362]
#     Input Text    //input[@for="filterLov"]    %agulha%descart%
#     Click Element    xpath=(//span)[362]
#     Click Element    xpath=(//div[@title="AGULHA HIPODERMICA DESCART 40X12MM"])[7]
#     Click Element    xpath=(//div[@title="AGULHA HIPODERMICA DESCART 40X12MM"])[7]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames338"]    8
#     Click Element    xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[2]
#     Input Text    //input[@for="filterLov"]    %cloreto%sodio%
#     Click Element    xpath=(//span)[362]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-250ML ISENTO PVC IV"]
#     Click Element    //div[@title="CLORETO SODIO 0,9%-250ML ISENTO PVC IV"]
#     Click Element    xpath=(//div[@class="slick-cell b7 f7 selected"])[2]
#     Input Text    //input[@id="#frames344"]    1
#     Click Element    xpath=(//span)[209]
#     Click Element    //button[@id="frames358"]
#     Click Element    xpath=(//span)[402]
#     Click Element    //button[@id="frames362"]
#     Click Element    //button[@id="frames366"]
#     Click Element    xpath=(//span)[419]
#     Click Element    //button[@id="frames370"]
#     Click Element    //button[@id="btnSair"]
#     Click Element    //button[@title="Imp."]
#     Click Element    xpath=(//span)[78]
#     Click Element    xpath=(//span)[423]
#     Click Element    //button[@id="frames398"]
#     Click Element    //button[@id="frames399"]
#     Click Element    xpath=(//span)[425]
#     Click Element    //button[@id="frames411"]
#     Click Element    xpath=(//span)[427]

#     Close Browser