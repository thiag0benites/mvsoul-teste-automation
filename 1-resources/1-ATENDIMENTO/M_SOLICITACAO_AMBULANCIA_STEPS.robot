##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_SOLICITACAO_AMBULANCIA.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource                ../../2-pages/1-ATENDIMENTO/M_SOLICITACAO_AMBULANCIA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher solicitacao e validar campos |${agendarPara}|, |${tipoSolicitacao}|, |${tipoAmbulancia}|, |${posicaoDoPaciente}|, |${setorDeBusca}|, |${unidadeDeInternacao}|, |${leito}|, |${paciente}|, |${trajeto}|
    
    Preencher campo  ${campoAgendarPara}     ${agendarPara} 
    Send keys  enter
    Validar Informacao Item     ${campoAgendarPara}   ${agendarPara}
    
    Preencher campo  ${campoTipoSolicitacao}     ${tipoSolicitacao} 
    Send keys  enter
    Validar Informacao Item     ${campoTipoSolicitacao}   ${agendarPara}

    Preencher campo  ${campoTipoAmbulancia}     ${tipoAmbulancia} 
    Send keys  enter
    Validar Informacao Item     ${campoTipoAmbulancia}   ${tipoAmbulancia}

    Preencher campo  ${campoPosicaoDoPaciente}     ${posicaoDoPaciente} 
    Send keys  enter
    Validar Informacao Item     ${campoPosicaoDoPaciente}   ${posicaoDoPaciente}

    Preencher campo  ${campoSetorDeBusca}     ${setorDeBusca} 
    Send keys  enter
    Validar Informacao Item     ${campoSetorDeBusca}   ${setorDeBusca}

    Preencher campo  ${campoUnidadeDeInternacao}     ${unidadeDeInternacao} 
    Send keys  enter
    Validar Informacao Item     ${campoUnidadeDeInternacao}   ${unidadeDeInternacao}

    Preencher campo  ${campoLeito}     ${leito} 
    Send keys  enter
    Validar Informacao Item     ${campoLeito}   ${leito}

    Preencher campo  ${campoPaciente}     ${paciente} 
    Send keys  enter
    Validar Informacao Item     ${campoPaciente}   ${paciente}

    Preencher campo  ${campoTrajeto}     ${trajeto} 
    Send keys  enter
    Validar Informacao Item     ${campoTrajeto}   ${trajeto}


Salvar solicitacao e validar mensagem |${mensagemSucesso}|
    Clicar no botao Salvar do menu
    Valida Mensagem                    ${MensagemToast}         ${mensagemSucesso}
