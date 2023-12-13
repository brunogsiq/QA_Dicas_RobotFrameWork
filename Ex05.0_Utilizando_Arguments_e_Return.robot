*** Settings ***
Suite Setup      Log To Console    Início da execução.
Test Setup       Log to Console    _P X F_
Test Teardown    Log To Console    Execução finalizada.
Suite Teardown   Log To Console    Resultado(s) do(s) Teste(s).

*** Test Cases ***
Cenario: Divisão
    Dividir numero 8 por 2

Cenario: Divisão 2
    ${resultado_externo}    Dividir o numero 10 por 5
    Log To Console    O resultado da divisão é: ${resultado_externo}

Cenario: Exibir nome no console 01
    Imprimir nome e sobrenome em linhas apartadas 01    Bruno    Siqueira

Cenario: Exibir nome no console 02
    Imprimir nome e sobrenome em linhas apartadas 02    NOME2=Vai    SNOME2=Corinthians

Cenario: Exibir nome no console 03
    Imprimir nome e sobrenome em linhas apartadas 02    SNOME3=Jorge


*** Keywords ***
Dividir numero ${NUMERO01} por ${NUMERO02}
    Log To Console    ${EMPTY}
    ${RESULT01}    Evaluate    ${NUMERO01} / ${NUMERO02}
    Log to Console    O resultado da divisão é: ${RESULT01}
    Log To Console    ${EMPTY}

Dividir o numero ${VALOR01} por ${VALOR02}
    Log To Console    ${EMPTY}
    ${resultado_interno}    Evaluate    ${VALOR01} / ${VALOR02}
    Log To Console    ${EMPTY}
    RETURN    ${resultado_interno}

Imprimir nome e sobrenome em linhas apartadas 01
    [Arguments]    ${NOME}    ${SNOME}
    Log To Console    ${EMPTY}
    Log To Console    Seu nome preenchido foi: ${NOME}
    Log To Console    Seu sobrenome preenchido foi: ${SNOME}
    Log To Console    ${EMPTY}

Imprimir nome e sobrenome em linhas apartadas 02
    [Arguments]    ${SNOME2}=    ${NOME2}=
    Log To Console    ${EMPTY}
    Log To Console    Seu nome preenchido foi: ${NOME2}
    Log To Console    Seu sobrenome preenchido foi: ${SNOME2}
    Log To Console    ${EMPTY}

Imprimir nome e sobrenome em linhas apartadas 03
    [Arguments]    ${SNOME3}=Jorge    ${NOME3}=São
    Log To Console    ${EMPTY}
    Log To Console    Seu nome preenchido foi: ${NOME3}
    Log To Console    Seu sobrenome preenchido foi: ${SNOME3}
    Log To Console    ${EMPTY}
