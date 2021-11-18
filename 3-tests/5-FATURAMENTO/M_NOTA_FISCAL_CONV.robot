#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição:  Gerar nota fiscal de convenio, com sucesso.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR5F_M_NOTA_FISCAL_CONV-001:Gerar Nota Fiscal de Convênio" -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox:  robot -v browser:firefox -t "SCR5F_M_NOTA_FISCAL_CONV-001:Gerar Nota Fiscal de Convênio" -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTOS/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/5-FATURAMENTO/M_NOTA_FISCAL_CONV_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_NOTA_FISCAL_CONV
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5F_M_NOTA_FISCAL_CONV-001:Gerar Nota Fiscal de Convênio
# robot -v browser:chrome -t "SCR5F_M_NOTA_FISCAL_CONV-001:Gerar Nota Fiscal de Convênio" -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL_CONV.robot"
# robot -v browser:firefox -t "SCR5F_M_NOTA_FISCAL_CONV-001:Gerar Nota Fiscal de Convênio" -d ./5-results/SCR5F_M_NOTA_FISCAL_CONV-001 "3-tests/5-FATURAMENTO/M_NOTA_FISCAL_CONV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4M_M_NOTA_FISCAL_CONV-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"@nprint @las
    Preencher campo de Convenio |${dados}[codConvenio]|
    Clicar no campo [Remessa]
    Preencher campo de Remessa |${dados}[codRemessa]|
    Clicar no botao [Concluir]
    Valida Mensagem  ${MensagemSucesso}     Nota Fiscal Nº 9439-B gerada com sucesso.
    Clicar no botao [OK]
    

