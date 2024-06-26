#################################################################################################################################################################
# Autor: José Neto
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:firefox -d ./5-results/O_REC_CONV_STEPS "3-tests\6 - CONTROLADORIA\O_REC_CONV.robot"
# chrome:         robot -v browser:chrome -d ./5-results/O_REC_CONV_STEPS "3-tests\6 - CONTROLADORIA\O_REC_CONV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_REC_CONV_STEPS "3-tests\6 - CONTROLADORIA\O_REC_CONV.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_REC_CONV_STEPS "3-tests\6 - CONTROLADORIA\O_REC_CONV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_REC_CONV_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          o_rec_conv
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5616 : Registrar Recebimento de Contas de Convênio pelo valor da nota fiscal
# robot -v browser:chrome -t "SMF-5616 : Registrar Recebimento de Contas de Convênio pelo valor da nota fiscal" -d ./5-results/SMF-5616 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
# robot -v browser:firefox -t "SMF-5616 : Registrar Recebimento de Contas de Convênio pelo valor da nota fiscal" -d ./5-results/SMF-5616 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5616"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    O_REC_CONV_STEPS.Selecionar Convenio e Colocar o Sistema em Modo de Pesquisa |${dados}[CampoConvenio]| |${dados}[NrReferencia]|
    Consultar nota fiscal pelo valor da nota
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Selecionar a Aba Contas x Itens da Nota Fiscal
    Informar no Campo (Receb.) o Valor a Ser Recebido |${dados}[VlReceb]|
    Clicar em (Efetuar Recebimento)

SMF-5619 : Registrar Recebimento de Contas de Convênio pelo valor a receber da nota fiscal
    # robot -v browser:chrome -t "SMF-5619 : Registrar Recebimento de Contas de Convênio pelo valor a receber da nota fiscal" -d ./5-results/SMF-5619 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    # robot -v browser:firefox -t "SMF-5619 : Registrar Recebimento de Contas de Convênio pelo valor a receber da nota fiscal" -d ./5-results/SMF-5619 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5619"
    #Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Acessa a Tela Pela Busca |O_REC_CONV||Recebimentos de Convênio| @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    Selecionar Convenio e Colocar o Sistema em Modo de Pesquisa |${dados}[CampoConvenio]| |${dados}[NrReferencia]| 
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Selecionar a Aba Contas x Itens da Nota Fiscal
    Informar no Campo (Receb.) o Valor a Ser Recebido |${dados}[VlReceb]|
    Atualizar Tela
    Clicar em (Efetuar Recebimento)
    Clicar em 'Sim' Para Efetuar Recebimento e em 'OK' Para Validar Mensagem

SMF-5620 : Registrar Recebimento de Contas de Convênio pelo valor a conciliar da nota fiscal
    # robot -v browser:chrome -t "SMF-5620 : Registrar Recebimento de Contas de Convênio pelo valor a conciliar da nota fiscal" -d ./5-results/SMF-5620 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    # robot -v browser:firefox -t "SMF-5620 : Registrar Recebimento de Contas de Convênio pelo valor a conciliar da nota fiscal" -d ./5-results/SMF-5620 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5620"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    Selecionar Convenio e Por o Sistema em Modo de Busca |${dados}[CampoConvenio]|
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Clicar em (Efetuar Recebimento)
    Clicar em 'Sim' Para Efetuar Recebimento e em 'OK' Para Validar Mensagem
SMF-5622 : Registrar Recebimento de Contas de Convênio com Acréscimo
    # robot -v browser:chrome -t "SMF-5622 : Registrar Recebimento de Contas de Convênio com Acréscimo" -d ./5-results/SMF-5622 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    # robot -v browser:firefox -t "SMF-5622 : Registrar Recebimento de Contas de Convênio com Acréscimo" -d ./5-results/SMF-5622 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5622"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    Selecionar Convenio e Por o Sistema em Modo de Busca |${dados}[CampoConvenio]|
    Consultar nota fiscal pelo numero
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Marcar o Checkbox 'Dif. Rateio e Acrescimo'
    Clicar em (Efetuar Recebimento)
SMF-5623 : Registrar Recebimento de Contas de Convênio com Detalhamento Retido
    # robot -v browser:chrome -t "SMF-5623 : Registrar Recebimento de Contas de Convênio com Detalhamento Retido" -d ./5-results/SMF-5623 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    # robot -v browser:firefox -t "SMF-5623 : Registrar Recebimento de Contas de Convênio com Detalhamento Retido" -d ./5-results/SMF-5623 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5623"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    Selecionar Convenio e Por o Sistema em Modo de Busca |${dados}[CampoConvenio]|
    Consultar nota fiscal pelo numero
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Validar Botao [VL Imposto Retido]
    Clicar em (Efetuar Recebimento)
SMF-5624 : Registrar Recebimento de Contas de Convênio com Glosa não recebidos
    # robot -v browser:chrome -t "SMF-5624 : Registrar Recebimento de Contas de Convênio com Glosa não recebidos" -d ./5-results/SMF-5624 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    # robot -v browser:firefox -t "SMF-5624 : Registrar Recebimento de Contas de Convênio com Glosa não recebidos" -d ./5-results/SMF-5624 "3-tests/6-CONTROLADORIA/O_REC_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5624"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Receber>Recebimentos>Recebimentos de Convênio"@nprint @nao
    Validar Acesso a Tela |Recebimento de Convênio|
    Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${dados}[CampoEmpresa]|
    Selecionar Convenio e Por o Sistema em Modo de Busca |${dados}[CampoConvenio]|
    Consultar nota fiscal pelo numero
    Alterar a Data do Recebimento |${dados}[DtRecebimento]|
    Informar o Numero do Documento |${dados}[NrDocumento]|
    Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${dados}[ContaCorrente]|
    Marcar o Checkbox 'Glosa Nao Recebidos'
    Clicar em (Efetuar Recebimento)