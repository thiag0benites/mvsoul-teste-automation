##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Versão
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_FOREXA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Versoes de Laudos Cadastrados |${VersaoExame}| |${MsgConsulta}|
    Click Elemento por titulo            Procurar
    Valida Mensagem                      ${MensagemToast}            ${MsgConsulta}
    Click Elemento por titulo            Executar Consulta
    Validar Elemento Pelo Titulo         ${VersaoExame}

Criar Nova Versao de Laudo |${NovaVersao}| |${Exame}| |${Material}|
    Click Elemento por titulo            Adicionar
    Preencher Campo                      ${CampoEditavel}           ${NovaVersao}
    Clicar Item e Selecionar da Lista    ${CampoExame}              ${BotaoLovEdit}    ${Exame}        ${Exame}
    Clicar Item e Selecionar da Lista    ${CampoCdMaterial}         ${BotaoLovEdit}    ${Material}     ${Material}   

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Versao Criada
    Click Elemento por titulo            Apagar

