##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Grupo de Critérios
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_CAD_CRITERIO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados Criterio |${Descricao}| |${TpCriterio}| |${VlUnico}| |${IdFormula}| |${TpValidade}| |${VlValidade}| |${IdPEP}|
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Clicar Item e Selecionar da Lista    ${CampoTpCriterio}    ${BotaoLovEdit}    ${TpCriterio}    ${TpCriterio}
    Clicar no Campo e Preencher Informacao    ${CampoVlUnico}    ${CampoEdit}    ${VlUnico}
    Clicar no Campo e Preencher Informacao    ${CampoIdFormula}    ${CampoEdit}    ${IdFormula}
    Clicar no Campo e Preencher Informacao    ${CampoTpValidade}    ${ComboboxEdit}    ${TpValidade}
    Clicar no Campo e Preencher Informacao    ${CampoVlValidade}    ${CampoEdit}    ${VlValidade}
    Clicar no Campo e Preencher Informacao    ${CampoIdPEP}    ${CampoEdit}    ${IdPEP}

Validar Codigos Relacionados ao Criterio |${Tipo1}| |${Tipo2}|
    Validar Elemento Pelo Titulo    ${Tipo1}
    Validar Elemento Pelo Titulo    ${Tipo2}

Preencher Codigos Relacionados |${CdRelacionado1}| |${CdRelacionado2}|
    Clicar Item e Selecionar da Lista    ${CampoCdRelacionado1}    ${BotaoLovEdit}    ${CdRelacionado1}    ${CdRelacionado1}
    Clicar Item e Selecionar da Lista    ${CampoCdRelacionado2}    ${BotaoLovEdit}    ${CdRelacionado2}    ${CdRelacionado2}

Preencher Formula |${Formula}|
    Preencher Campo    ${CampoFormula}    ${Formula}

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Criterio Cadastrado |${Descricao}| |${MensagemNenhumRegistro}|
    Click no Item    ${CampoDescricao}
    Click Elemento por titulo    Apagar
    Click Elemento por titulo    Salvar
    Click Elemento por titulo    Procurar
    Preencher Campo    ${CampoDescricao}    ${Descricao}
    Click Elemento por titulo    Executar Consulta
    Valida Mensagem    ${MensagemToast}    ${MensagemNenhumRegistro}
    
