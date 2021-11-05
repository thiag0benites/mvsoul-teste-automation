##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Movimentação de Aparelhos / Gases
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_CONTROLE_GASES_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Pesquisa de Atendimento
    Click no Item                               ${BotaoPesquisar}
    Preencher Campo                             ${CampoPaciente}                1312609
    Click Elemento por titulo                   Executar Consulta
    Validar Elemento Pelo Titulo                PACIENTE TESTE RPA
    Click no Item                               ${BotaoConfirmar}
    Validar Elemento Pelo Titulo                PACIENTE TESTE RPA

Validar Tabela Descricao Do Procedimento
    Click no Item                               ${ValidAtendimento}
    Validar Elemento Pelo Titulo                ATORVASTATINA 80 MG (POR COMPRIMIDO)
    Validar Elemento Pelo Titulo                0604360045

Selecionar Procedimento |${Procedimento}|
    Click no Item                               ${CampoProcedimento}
    Click Elemento por titulo                   Procurar 
    Clicar no Campo e Preencher Informacao      ${CampoProcedimento}            ${CampoProcedimentoEditavel}        ${Procedimento}      
    Click Elemento por titulo                   Executar Consulta        
    Click Elemento por titulo                   ${Procedimento}    

Preencher Campos Com Dados Do Procedimento
    Clicar no Campo e Preencher Informacao      ${CampoDataInicial}             ${CampoDataEditavel}                21/10/2021
    Clicar no Campo e Preencher Informacao      ${CampoHrInicial}               ${CampoHrEditavel}                  00:00
    Clicar no Campo e Preencher Informacao      ${CampoDataFinal}               ${CampoDataEditavel}                21/10/2021
    Clicar no Campo e Preencher Informacao      ${CampoHrFinal}                 ${CampoHrEditavel}                  14:00

Clicar Botao Salvar
    Click Elemento por titulo                   Salvar
    Valida Mensagem                             ${MensagemSalvar}               Registro salvo com sucesso.
    Click no Item                               ${BotaoOkSalvar}

####   Keyword para retornar massa ao ponto incial do teste   ###
Excluir Dados Inseridos
    Click no Item                               ${CampoDataInicial}
    Click Elemento por titulo                   Apagar
    Click Elemento por titulo                   Salvar
    Valida Mensagem                             ${MensagemSalvar}               Registros gravados com sucesso





