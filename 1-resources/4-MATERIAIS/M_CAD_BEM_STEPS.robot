##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CAD_BEM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campos de Dados do Bem |${DescricaoPlaqueta}| |${DescricaoBem}| |${NrSerie}| |${Marca}| |${Modelo}| |${TpAquisicao}| |${Especie}| |${Classe}| |${Subclasse}|  
    Wait Until Element Is Visible        ${CampoDescricaoPlaq}                 120
    Preencher Campo                      ${CampoDescricaoPlaq}                 ${DescricaoPlaqueta}
    Preencher Campo                      ${CampoDescricaoBem}                  ${DescricaoBem}
    Preencher Campo                      ${CampoNrSerie}                       ${NrSerie}
    Preencher Campo                      ${CampoMarca}                         ${Marca}
    Preencher Campo                      ${CampoModelo}                        ${Modelo}
    Selecionar Item Na Lista             ${BotaoLovTpAquisicao}                ${TpAquisicao}                  ${TpAquisicao}
    Selecionar Item Na Lista             ${BotaoLovEspecie}                    ${Especie}                      ${Especie}
    Selecionar Item Na Lista             ${BotaoLovClasse}                     ${Classe}                       ${Classe}
    Selecionar Item Na Lista             ${BotaoLovSubclasse}                  ${Subclasse}                    ${Subclasse}

Preencher Campos Classificao para Contabilidade |${Classificacao}| |${Subclassificacao}|
    Selecionar Item Na Lista             ${BotaoLovClassificacao}              ${Classificacao}                ${Classificacao}          
    Selecionar Item Na Lista             ${BotaoLovSubclassificacao}           ${Subclassificacao}             ${Subclassificacao}        
    
Preencher Campos de Localizacao do Bem |${CentroCusto}| |${Localidade}|
    Selecionar Item Na Lista             ${BotaoLovCentroCusto}                ${CentroCusto}                  ${CentroCusto}         
    Selecionar Item Na Lista             ${BotaoLovLocalidade}                 ${Localidade}                   ${Localidade}         

Acessar Aba Dados da Compra
    Click no Item                        ${AbaDadosCompra}

Preencher Data da Compra |${DataCompra}|     
    Preencher Campo                      ${CampoDataCompra}                    ${DataCompra}

Acessar Aba Manutencao
    Click no Item                        ${AbaManutencao}

Preencher Dados Manutencao |${Periodicidade}| |${VencGarantia}|
    Preencher Campo                      ${CampoPeriodicidade}                 ${Periodicidade}
    Preencher Campo                      ${CampoVencGarantia}                  ${VencGarantia}

Salvar Cadastro de Bem |${Suite}| |${LinhaGerenciador}|
    Click Elemento por titulo            Salvar
    ${RecebeCodBem}         Get Element Attribute       ${CampoCdBem}    title
    Altera massa de dados da "${Suite}", linha "${LinhaGerenciador}", coluna "Cdbem", valor "${RecebeCodBem}"

### Keyword para retornar massa de dados ao status inicial ###
Excluir Bem Cadastrado |${DescricaoPlaqueta}| |${DescricaoBem}| |${MensagemExcluir}|
    Click Elemento por titulo            Procurar
    Preencher Campo                      ${CampoDescricaoPlaq}                 ${DescricaoPlaqueta}
    Click Elemento por titulo            Executar Consulta
    Validar Elemento Pelo Titulo         ${DescricaoBem}
    Click Elemento por titulo            Apagar
    Valida Mensagem                      ${MensagemToast}                      ${MensagemExcluir}
    Click no Item                        ${BotaoSim}
    Wait Until Element Is Not Visible    ${CampoDescBemPreenchido}             20

