##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da pagina Devolução de Produtos Paciente
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/4-MATERIAIS/M_DEVPAC_PAGE.robot

*** Keywords ***
Preencher Dados da Devolucao |${Estoque}| |${Atendimento}| |${Motivo}|
    Selecionar Item Na Lista    ${BotaoLovEstoque}    ${Estoque}    ${Estoque}
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}
    Selecionar Item Na Lista    ${BotaoLovMotivo}    ${Motivo}    ${Motivo}

Preencher Produto a Ser Devolvido |${MensagemData}| |${Produto}| |${Quantidade}|
    Click no Item    ${BotaoDigCodProduto}
    Click no Item    ${CampoCdProduto}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemData}
    Click no Item    ${BotaoSim}
    Preencher Campo    ${CampoLovEdit}    ${Produto}
    Clicar no Campo e Preencher Informacao    ${CampoQtdRecebida}    ${CampoEdit}    ${Quantidade}

Salvar Devolucao de Produto |${MensagemSucesso}| |${MensagemLimparTela}|
    Clicar Botao Salvar |${MensagemSucesso}|
    Genericos.Valida Mensagem    ${MensagemToast2}    ${MensagemLimparTela}
    Click no Item    ${BotaoNao}
