##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_PRODUTO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Descricao e Tipo do Produto
    Selecionar Item Na Lista            ${BotaoLovDescricao}                PRODUTO 01                            PRODUTO 01
    Preencher Campo                     ${CampoDescResumida}                PRODUTO TESTE AUTOMCAO
    Preencher Campo                     ${CampoTipoProduto}                 Normal

Preencher Campos Obrigatorios do Produto
    Selecionar Item Na Lista            ${BotaoLovUnidade}                  UNIDADE                               UNIDADE
    Selecionar Item Na Lista            ${BotaoLovEspecie}                  MATERIAIS HOSPITALARES                MATERIAIS HOSPITALARES
    Selecionar Item Na Lista            ${BotaoLovClasse}                   LUVAS                                 LUVAS
    Selecionar Item Na Lista            ${BotaoLovSubclasse}                LATEX                                 LATEX
    Validar Preenchimento dos Campos Obrigatorios

Validar Preenchimento dos Campos Obrigatorios
    Validar Elemento Pelo Titulo        UNIDADE
    Validar Elemento Pelo Titulo        MATERIAIS HOSPITALARES
    Validar Elemento Pelo Titulo        LUVAS
    Validar Elemento Pelo Titulo        LATEX

Preencher Campos Lote e Registro Anvisa
    Preencher Campo                     ${CampoLote}                         Sim
    Preencher Campo                     ${CampoRegistroAnvisa}               Sim

Selecionar Atividade do Produto
    Selecionar Item Na Lista            ${BotaoLovAtividade}                 EQUIPAMENTO DE SEGURANCA               EQUIPAMENTO DE SEGURANCA

Salvar Registro
    Click Elemento por titulo           Salvar    
    Valida Mensagem                     ${MensagemToast}                     Atenção: Não existe produto mestre vinculado ao item. Deseja informá-lo agora?
    Click no Item                       ${BotaoNao} 
    Wait Until Element Is Visible       ${MensagemToast}                     20
    ${PegaMensagem}                     SeleniumLibrary.Get Text             ${MensagemToast}
    Run Keyword If    "${PegaMensagem}" == "Atenção: Produto em duplicidade! Confirma Gravação?"  Click no Item    ${BotaoSim}
    Valida Mensagem                     ${MensagemToast}                     Registros gravados com sucesso