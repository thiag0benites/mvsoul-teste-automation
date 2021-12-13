##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de AMAP (Escolha de Same Obrigatoria)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/AMAP_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Same |${SAME}|
    Preencher Campo                ${CampoSame}                   ${SAME}
Acessar Same    
    Click no Item                  ${BotaoAcessar}
    Sleep   3
