##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_SOLICITACAO_AMBULANCIA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoAgendarPara}            xpath=//input[@id="inp:dtHrAmbulancia"]
${campoTipoSolicitacao}        xpath=//input[@id="inp:cdTipoSolicitacaoAmbulancia"]
${campoTipoAmbulancia}         xpath=//input[@id="inp:cdTipoAmbulancia"]
${campoPosicaoDoPaciente}      xpath=//input[@id="inp:cdPosicaoPacienteAmbulancia"]
${campoSetorDeBusca}           xpath=//input[@id="inp:cdSetor"]
${campoUnidadeDeInternacao}    xpath=//input[@id="inp:cdUnidInt"]
${campoLeito}                  xpath=//input[@id="inp:cdLeito"]
${campoPaciente}               xpath=//input[@id="inp:cdPaciente"]
${campoTrajeto}                xpath=//input[@id="inp:cdTrajeto"]
${MensagemToast}               xpath=//p[@class="notifications-item-text"]  




# ${campoEmpresa}     xpath=//input[@id="inp:cdMultiEmpresa"]
# ${campoNome}        xpath=//input[@id="inp:nmDmed"]
# ${campoCpf}         xpath=//input[@id="inp:cpfDmed"]
# ${campoDdd}         xpath=//input[@id="inp:dddDmed"]
# ${campoTelefone}    xpath=//input[@id="inp:telefoneDmed"]






