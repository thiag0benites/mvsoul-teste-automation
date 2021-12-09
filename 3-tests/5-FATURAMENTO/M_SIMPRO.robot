#################################################################################################################################################################
# Autor: Marcos Costa
# Realizar o relacionamento dos procedimentos de faturamento com a tabela SIMPRO.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
# chrome:         robot -v browser:firefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
# chrome:         robot -v browser:headlessfirefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/5-FATURAMENTO/M_SIMPRO_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          m_simpro
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
# SMF-5234
SCR5FMSIMPRO001:Fluxo Principal
    # robot -v browser:chrome -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
    # robot -v browser:firefox -t "SCR5FMSIMPRO001:Fluxo Principal" -d ./5-results/SCR5FMSIMPRO001 "3-tests/5-FATURAMENTO/M_SIMPRO.robot"
    # ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMSIMPRO001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Preços do SIMPRO"@nprint @las
    Informar no Campo 'Tabela' a Tabela Criada para Inserir os dados da Tabela SIMPRO - Tabela |SIMPRO - MEDICAMENTO - DF|	
    Informa no Campo 'Procedimento' o Codigo do Procedimento da Tabela SIMPRO - Procedimento |AGUA DESTILADA 10ML AMP|	
    Informa no Campo no campo 'Medicamento' o Codigo do Medicamento SIMPRO - Med |0000081111|	
    Informar no campo 'Fator de Divisao' que sera cobrado para o procedimento - Valor Div |50|
    Informar no campo 'Tipo do Valor' o tipo que sera cobrado o valor do procedimento - Tp Valor |Unitário| 
    Informa no Campo no campo 'TUSS' o Codigo do Procedimento - Tuss |90167279|
    Clicar no Botão 'SALVAR' |Registros gravados com sucesso (1 registros gravados).|
    