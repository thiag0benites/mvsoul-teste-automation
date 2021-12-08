##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/M_PED_RX_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tela de pedidos de exames |${setorExecutante}|,|${atendimento}|,|${medico}|,|${data}|,|${tecnico}|,|${setor}|,|${exame}|
    Preencher campo         ${campoAtendimento}              ${atendimento}
    Sleep     1

    Preencher campo         ${campoMedico}                   ${medico}
    Sleep     1
    
    Preencher campo         ${campoData}                     ${data}
    Sleep     1

    Preencher campo         ${campoTecnico}                  ${tecnico}
    Sleep     1

    Preencher campo         ${campoSetorSolic}               ${setor}
    Sleep     1

    Preencher campo         ${campoSetorExecutante}           ${setorExecutante}
    Sleep     1

    Click no Item          ${campoExame}
    Sleep     1
    Preencher campo     ${campoExameInput}                   ${exame}

Clicar no botao Salvar 
    Click no Item  ${btnSalvar}

