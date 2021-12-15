##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Confirmação de Coleta nos Setores e Postos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/CONFIRMACAO_COLETA_SETOR_PAGE.robot

*** Variable ***

*** Keywords ***
 Clicar Botao Procurar
    Click no Item                            ${BotaoProcurar}

Digita Cod perd |${CodAtend}|
    Input Text                               ${CampoCod}             ${CodAtend} 
    Send Keys    Enter

Clicar Btn Exec Consulta 
    Click no Item                           ${BotaoConfirmar}   
Validar Dados Triagem Coleta |${NomePaciente}| |${NomeExame}| |${NumPac}| |${Atendimento}|
    Validar Elemento Pelo Titulo             ${NomePaciente}
    Validar Elemento Pelo Titulo             ${NomeExame}
    Validar Elemento Pelo Titulo             ${NumPac}
    Validar Elemento Pelo Titulo             ${Atendimento}


