##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Gerenciamento de Higienizações de Leitos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_PROT_RECEB_PAGE.robot

*** Variable ***

*** Keywords ***

Selecionar Protocolo |${Protocolo}|
    Preencher Campo                ${CampoProtocolo}    ${Protocolo}
    Click Elemento por titulo       Executar Consulta

Marcar Recebimento
    Click no Item                  ${BotaoOK}
    Click no Item                  ${CheckRecebe}

Salvar e Validar |${MensagemEsperada}|
    Click Elemento por titulo    Salvar
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemEsperada}     
    Sleep    3