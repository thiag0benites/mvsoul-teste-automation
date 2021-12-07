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
    Validar Elemento Pelo Titulo      ${agendarPara}
      
    
    Preencher campo  ${campoTipoSolicitacao}     ${tipoSolicitacao} 
    Send keys  enter
    Validar Elemento Pelo Titulo      ${tipoSolicitacao}

    Preencher campo  ${campoTipoAmbulancia}     ${tipoAmbulancia} 
    Send keys  enter
    Validar Elemento Pelo Titulo       ${tipoAmbulancia}

    Preencher campo  ${campoPosicaoDoPaciente}     ${posicaoDoPaciente} 
    Send keys  enter
    Validar Elemento Pelo Titulo      ${posicaoDoPaciente}

    Preencher campo  ${campoSetorDeBusca}     ${setorDeBusca} 
    Send keys  enter
    Validar Elemento Pelo Titulo    ${setorDeBusca}

    Preencher campo  ${campoUnidadeDeInternacao}     ${unidadeDeInternacao} 
    Send keys  enter
    Validar Elemento Pelo Titulo     ${unidadeDeInternacao}

    Preencher campo  ${campoLeito}     ${leito} 
    Send keys  enter
    Validar Elemento Pelo Titulo     ${leito}

    Preencher campo  ${campoPaciente}     ${paciente} 
    Send keys  enter
    Validar Elemento Pelo Titulo     ${paciente}

    Preencher campo  ${campoTrajeto}     ${trajeto} 
    Send keys  enter
    Validar Elemento Pelo Titulo    ${trajeto}
    


Salvar solicitacao e validar mensagem |${mensagemSucesso}|
    Clicar no botao Salvar do menu
    Valida Mensagem                    ${MensagemToast}         ${mensagemSucesso}
    Sleep   1
