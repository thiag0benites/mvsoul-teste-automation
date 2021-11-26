##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_REPASSE_CONTA_PAGE.robot

*** Keywords ***
Usuario devera informar o codigo do atendimento |${CodAtendimento}| no campo <Atendimento>
    Clicar no Campo e Preencher Informacao            ${CampoAtendimento}            ${CampoAtendimento}            ${CodAtendimento}
    Usuario devera clicar no botao [Execultar Consulta]
    Validar Pesquisa Realizada|${AtendimentoComResultado}||${AtendimentoSemResultado}|@print 

Usuario devera clicar no botao [Execultar Consulta]
    Click no Item                                     ${BtnExecutarConsulta}

Usuario devera informar nome do paciente |${NomePac}| no campo <Paciente>
    Clicar no Campo e Preencher Informacao            ${CampoPaciente}            ${CampoPaciente}            ${NomePac}
    Usuario devera clicar no botao [Execultar Consulta]
    Validar Pesquisa Realizada|${PacienteComResultado}||${PacienteSemResultado}|@print 

Usuario devera clicar no botao [Honor. do Atend]
    Click no Item                                     ${BtnConsultaHonorario}            
    Validar Pesquisa Realizada|${HonorComResultado}||${HonorSemResultado}|@print 

    