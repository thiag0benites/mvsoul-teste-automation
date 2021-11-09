##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Papel
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/7-APOIO_TI/M_PAPEL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Descricao e Produto
    Preencher Campo             ${CampoDescPapel}                PAPEL AUTOMACAO
    Selecionar Item Na Lista    ${BotaoLovProduto}               INTERNAÇÃO                    INTERNAÇÃO

Marcar Modulos Vinculados ao Papel
    Click no Item               ${AbaModulo}
    Click no Item               ${CbAutorizaModulo}
    Valida Mensagem             ${MensagemToast}                 Registros gravados com sucesso (1 registros gravados).

Marcar Tabelas na Aba Tabelas/Campos
    Click no Item               ${AbaTabCampos} 
    Click no Item               ${CbTabInserir}
    Validar Item                ${CbColInserir}
    Click no Item               ${CbTabAlterar}
    Validar Item                ${CbColAlterar}


