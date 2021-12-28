##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/8-SERVICO_APOIO/C_PARECER_SETOR_PAGE.robot
#Resource         ../ContextoSteps.robot

*** Keywords ***
Abertura de Chamados |${Origem}||${Setor}||${NomePaciente}||${TipoChamado}||${NivelChamado}||${MeioChamado}||${Paciente}||${DescResu}||${CodigoSetores}||${Codigo2}||${CodigoMotivos}||${UsuarioMotivos}||${CodDest}||${MsgSucesso}|
    Clicar no Campo e Preencher Informacao    ${CampoOrigem}    ${CampoOrigem}    ${Origem}
    Clicar no Campo e Preencher Informacao    ${CampoSetor}    ${CampoSetor}    ${Setor}
    Clicar no Campo e Preencher Informacao    ${CampoNomePaciente}    ${CampoNomePaciente}    ${NomePaciente}
    Clicar no Campo e Preencher Informacao    ${CampoTipoChamado}    ${CampoTipoChamado}    ${TipoChamado}
    Clicar no Campo e Preencher Informacao    ${CampoNivelChamado}    ${CampoNivelChamado}    ${NivelChamado}
    Clicar no Campo e Preencher Informacao    ${CampoMeioChamado}    ${CampoMeioChamado}    ${MeioChamado}
    Clicar no Campo e Preencher Informacao    ${CampoPaciente}    ${CampoPaciente}    ${Paciente}
    Clicar no Campo e Preencher Informacao    ${CampoDescResu}    ${CampoDescResu}    ${DescResu}
    Click no Item    ${BtnParecer}
    Clicar no Campo e Preencher Informacao    ${CampoCodigoSetores}    ${CampoCodigoSetores}    ${CodigoSetores}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoCodigo2}    ${CampoCodigo2}    ${Codigo2}
    Clicar no Campo e Preencher Informacao    ${CampoCodigoMotivos}    ${CampoCodigoMotivosEdit}    ${CodigoMotivos}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoUsuarioMotivos}    ${CampoUsuarioMotivos}    ${UsuarioMotivos}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoCodDest}    ${CampoCodDest}    ${CodDest}
    Send Keys    enter
    Click no Item    ${btnSalvar}
    Valida Mensagem    ${MsgRecebida}    ${MsgSucesso}
