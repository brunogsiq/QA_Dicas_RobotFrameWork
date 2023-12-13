*** Variables ***
${Mensagem}     Hello world!!!


*** Test Cases ***
Cenário de teste 01: Olá mundo
    Imprimir mensagem no console

Cenário de teste 02: Adição
    Verificar se a soma 3+3+3+=9

Cenário de teste 03: Subtração
    Verificar se a subtração 10-5-4=1

Cenário de teste 04: Multiplicação
    Verificar se a multiplicação (10*7)*2=140


*** Keywords ***
Imprimir mensagem no console
    Log To Console    ${Mensagem}
    Log To Console    OK
    Log To Console    ${EMPTY}

Verificar se a soma 3+3+3+=9
    Should Be True    3+3+3 == 9
    Log To Console    OK
    Log To Console    ${EMPTY}

Verificar se a subtração 10-5-4=1
    Should Be True    10-5-4 == 1
    Log To Console    OK
    Log To Console    ${EMPTY}

Verificar se a multiplicação (10*7)*2=140
    Should Be True    (10*7)*2 == 140
    Log To Console    OK
    Log To Console    ${EMPTY}
