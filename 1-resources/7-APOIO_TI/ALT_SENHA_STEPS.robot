##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração da Senha de Acesso
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/7-APOIO_TI/ALT_SENHA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Usuario e Senha
    Selecionar Item Na Lista            ${BotaoLovUsuario}          ANDREVASCONCELOS            ANDREVASCONCELOS
    Preencher campo                     ${CampoSenha}               12345678
    Preencher campo                     ${CampoConfSenha}           12345678

Confirmar Alteracao da Senha
    Click no Item                       ${BotaoConfAlteracao} 
    Valida Mensagem                     ${MensagemConfirmacao}      Atenção : A Senha foi alterada com sucesso
    Click no Item                       ${BotaoOk}
