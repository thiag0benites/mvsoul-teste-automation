##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_SOLIC_LIMPEZA
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource                ../../2-pages/6-CONTROLADORIA/O_GERA_DMED_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Configuracoes |${vigencia}|, |${centroRegra}|, |${centroOrigem}|, |${empresaDestino}|, |${centroDestino}|, |${descConta}|
   
    # Click no Item  ${campoCentroRegra}
    Preencher campo  ${campoCentroRegraInput}         ${centroRegra}
    Click no Item  ${campoCentroOrigem} 
    Preencher campo  ${campoCentroOrigemInput}        ${centroOrigem}
    Click no Item  ${campoEmpresaDestino}
    Preencher campo  ${campoEmpresaDestinoInput}      ${empresaDestino}
    Click no Item  ${campoCentroDestino}
    Preencher campo  ${campoCentroDestinoInput}       ${centroDestino}
    Click no Item  ${campoDescConta}
    Preencher campo  ${campoDescContaInput}           ${descConta}
    Click no Item  ${campoVigencia}  
    Preencher campo  ${campoVigenciaInput}            ${vigencia}
    Send keys   enter

Validar Campos |${vigencia}|, |${centroRegra}|, |${centroOrigem}|, |${empresaDestino}|, |${centroDestino}|, |${descConta}|
    Validar Elemento Pelo Titulo  ${campovigencia}          ${vigencia}
    Validar Elemento Pelo Titulo  ${campoCentroRegra}       ${centroRegra}
    Validar Elemento Pelo Titulo  ${campoCentroOrigem}      ${centroOrigem}
    Validar Elemento Pelo Titulo  ${campoEmpresaDestino}    ${empresaDestino}
    Validar Elemento Pelo Titulo  ${campoCentroDestino}     ${centroDestino}
    Validar Elemento Pelo Titulo  ${campoDescConta}         ${descConta}


Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
 
    
Exportar e validar mensagem de sucesso |${mensagemSucesso}|
    Clicar Botao e Validar Mensagem    ${btnExportar}       ${MensagemToast}              ${mensagemSucesso} 
    Click no Item                      ${btnOk}
    
