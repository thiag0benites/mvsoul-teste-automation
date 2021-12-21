##################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/2-ASSISTENCIAL/M_CONFIG_LISTA_PACIENTE_PAGE.robot

*** Keywords ***

Informa na Tela Lista de Paciente <Empresa> |${VlEmp}| <TpInternacao> |${VlTpAten}| <TpPrestador> |${VlTpPres}| <Person> |${VlPerson}| <Ordem> |${VlOrd}| <Segundo> |${VlSeg}| <MSG> |${MsgEsperada}|
    Validar Acesso a Tela |Lista de Paciente|
    # Empresa
    Click no Item      ${BtPesq}
    Click no Item      ${CpEmpA}
    Click no Item      ${CpEmpB}
    Clicar no Campo e Preencher Informacao    ${CpEmpC}    ${CpEmpC}    ${VlEmp}
    Click no Item      ${CpEmpD}
    Click no Item      ${CpEmpE}
    # Tipo de Atendimento
    Click no Item      ${CpTpAtenA}
    Clicar no Campo e Preencher Informacao    ${CpTpAtenB}    ${CpTpAtenB}    ${VlTpAten}
    # Tipo de Prestador
    Click no Item      ${CpTpPresA}
    Clicar no Campo e Preencher Informacao    ${CpTpPresB}    ${CpTpPresB}    ${VlTpPres}
    # Executar a Pesquisa
    Click no Item      ${BtExec}
    # Exibir
    Marcar Checkbox |${ChExib}|
    # Personalizada
    Click no Item      ${CpPersA}
    Clicar no Campo e Preencher Informacao    ${CpPersB}    ${CpPersB}    ${VlTpPres}
    # Ordem
    Click no Item      ${CpOrdA}
    Clicar no Campo e Preencher Informacao    ${CpOrdB}    ${CpOrdB}    ${VlOrd}
    # Filtro
    Marcar Checkbox |${ChMPac}|        
    Marcar Checkbox |${ChMSet}|        
    Clicar no Campo e Preencher Informacao    ${CpSegI}    ${CpSegI}    ${VlSeg}
    # Salvar e Validar
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}

