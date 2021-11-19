##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_REP_MANUAL_PAGE.robot

*** Keywords ***

# Inserir Data de Inicio |${data}|
Inserir Data Competencia |${dd}/${MES}/${aaaa}|
    # Sleep    2
    # ${dd}                          Get Substring        ${data}         0     2
    # ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    # IF    ${ddPrimeriaPosicao} == 0
    # ${dd}                          Get Substring        ${data}         1     2
    # END

    # ${MES}                         Get Substring        ${data}         3     6
    # ${aaaa}                        Get Substring        ${data}         7     12
    Click Element                  ${CampoDataCompet} 
    Sleep                                               5     
    Click Element                  ${BotaoDataInicial}
    Sleep                                               10
    # Click Element                  ${SetaDoCalendario}
    # Sleep                                               2
    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               5
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click Element                  ${mesInicio}
    Sleep                                               5
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               5

Inserir Data Repasse |${dd}/${MES}/${aaaa}|
    # Sleep    2
    # ${dd}                          Get Substring        ${data}         0     2
    # ${ddPrimeriaPosicao}           Get Substring        ${dd}           0     1

    # IF    ${ddPrimeriaPosicao} == 0
    # ${dd}                          Get Substring        ${data}         1     2
    # END

    # ${MES}                         Get Substring        ${data}         3     6
    # ${aaaa}                        Get Substring        ${data}         7     12
    Click Element                  ${CampoDataRepasse} 
    Sleep                                               5     
    Click Element                  ${BtnCalendDataRepasse}
    Sleep                                               10
    # Click Element                  ${SetaDoCalendario}
    # Sleep                                               2
    ${anoInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-year']//option[contains(text(),'${aaaa}')]
    Should Be Equal                ${anoInicio.text}                    ${aaaa}
    Click Element                  ${anoInicio}
    Sleep                                               5
    ${mesInicio}=                  Get WebElement                       xpath://select[@class='ui-datepicker-month']//option[contains(text(),'${MES}')]
    Should Be Equal                ${mesInicio.text}                    ${MES}
    Click Element                  ${mesInicio}
    Sleep                                               5
    ${diaInicio}=                  Get WebElement                       xpath://a[contains(text(),'${dd}')]
    Should Be Equal                ${diaInicio.text}                    ${dd}
    Click Element                  ${diaInicio}
    Sleep                                               5


Clicar no botao [Buscar]
    Click no Item                                        ${BtnProcurar}
    
No campo <Competencia> inserir a competência desejada e clicar no botao [Executar]
    Inserir Data Competencia |18/Nov/2019|
    Click no Item                                        ${BtnExecutarConsulta} 

Clicar no botao [Adicionar] para realizar lancamento manual    
    Click no Item                                        ${BtnAdicionar(+)}       

Usuario devera informar no campo <Competencia> para identificacao do Repasse a ser lancado manualmente no sistema
    Inserir Data Repasse |20/11/2019|