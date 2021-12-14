##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Empresas
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_EMPFIN_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados Aba Empresa |${Codigo}| |${NomeFantasia}| |${RazaoSocial}| |${CNPJ}| |${InscEstadual}| |${Logradouro}| |${Endereco}| |${Numero}| |${CEP}| |${Cidade}| |${DDD}| |${Telefone}| |${Moeda}|
    Preencher Campo                ${CampoCodigo}                 ${Codigo}
    Preencher Campo                ${CampoNomeFantasia}           ${NomeFantasia}
    Preencher Campo                ${CampoRazaoSocial}            ${RazaoSocial}    
    Preencher Campo                ${CampoCNPJ}                   ${CNPJ}
    Preencher Campo                ${CampoInscEstadual}           ${InscEstadual}     
    Selecionar Item Na Lista       ${BotaoLovLogradouro}          ${Logradouro}                ${Logradouro}
    Preencher Campo                ${CampoEndereco}               ${Endereco}
    Preencher Campo                ${CampoNumero}                 ${Numero}
    Preencher Campo                ${CampoCEP}                    ${CEP}
    Selecionar Item Na Lista       ${BotaoLovCidade}              ${Cidade}                    ${Cidade}
    Preencher Campo                ${CampoDDD}                    ${DDD}
    Preencher Campo                ${CampoTelefone}               ${Telefone}
    Selecionar Item Na Lista       ${BotaoLovMoeda}               ${Moeda}                     ${Moeda}

Preencher Dados Aba Associacoes |${TipoEmpresa}|
    Click no Item                  ${AbaAssociacoes} 
    Selecionar Item Na Lista       ${BotaoLovTipoEmpresa}         ${TipoEmpresa}               ${TipoEmpresa}

Preencher Dados Aba Informacoes Adicionais |${DiretorGeral}| |${DDDFax}| |${NrFax}| |${EmailResp}| |${Contador}| |${Fornecedor}|
    Click no Item                  ${AbaInfoAdicionais} 
    Preencher Campo                ${CampoDiretorGeral}           ${DiretorGeral}
    Preencher Campo                ${CampoDDDFax}                 ${DDDFax}
    Preencher Campo                ${CampoNrFax}                  ${NrFax}   
    Preencher Campo                ${CampoEmailResp}              ${EmailResp}
    Preencher Campo                ${CampoContador}               ${Contador}
    Selecionar Item Na Lista       ${BotaoLovFornecedor}          ${Fornecedor}                  ${Fornecedor}

Preencher Dados Aba Transacoes Entre Empresas |${CdReduzido}|
    Click no Item                  ${AbaTransacoes} 
    Selecionar Item Na Lista       ${BotaoLovCdReduzido}          ${CdReduzido}                     ${CdReduzido}

Preencher Dados Aba SPED |${SitEspecial}| |${Suframa}| |${RepLegal}| |${CPFRepLegal}| |${QualiRepLegal}|
    Click no Item                  ${AbaSPED} 
    Preencher Campo                ${CampoSitEspecial}            ${SitEspecial}
    Preencher Campo                ${CampoSuframa}                ${Suframa}
    Preencher Campo                ${CampoRepLegal}               ${RepLegal}
    Preencher Campo                ${CampoCPFRepLegal}            ${CPFRepLegal}
    Preencher Campo                ${CampoQualiRepLegal}          ${QualiRepLegal}

Preencher Dados Aba SPED Contribuicoes |${PIS}| |${Confins}| |${RegIncidencia}| |${MtdApropriacao}| |${CdIndicador}|
    Click no Item                  ${AbaSPEDContribuicoes} 
    Preencher Campo                ${CampoPIS}                    ${PIS}
    Preencher Campo                ${CampoConfins}                ${Confins}
    Preencher Campo                ${CampoRegIncidencia}          ${RegIncidencia}
    Preencher Campo                ${CampoMtdApropriacao}         ${MtdApropriacao}
    Preencher Campo                ${CampoCdIndicador}            ${CdIndicador}

Acessar Aba Nota Fiscal Eletronica
    Click no Item                  ${AbaNotaFiscal} 

Preencher Dados Aba Livro ISS DF |${NomeTecnico}|
    Click no Item                  ${AbaLivroISS} 
    Preencher Campo                ${CampoNomeTecnico}            ${NomeTecnico}

Acessar Aba Substituicao
    Click no Item                  ${AbaSubstituicao} 