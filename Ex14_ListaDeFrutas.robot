*** Settings ***
Library     Collections


*** Variables ***
@{FRUTAS}       UVA    MORANGO    PERA    ABACAXI


*** Test Cases ***
Cenario de teste 01: Exibir conteúdo de uma lista de acordo com o índice
    [Tags]    @cenario01    @fruta01
    Exibir conteudo da lista

Cenario de teste 02: Adicionar uma nova fruta a lista
    [Tags]    @cenario02    @fruta02
    Adicionar a fruta MELÃO na lista pre definida

Cenario de teste 03: Falhar de propósito
    [Tags]    @fail
    FAIL    falhou de proposito


*** Keywords ***
Exibir conteudo da lista
    Log To Console    ${EMPTY}
    Log To Console    ${FRUTAS}[0]
    Log    ${FRUTAS}[0]
    Log To Console    ${FRUTAS}[1]
    Log    ${FRUTAS}[1]
    Log To Console    ${FRUTAS}[2]
    Log    ${FRUTAS}[2]
    Log To Console    ${FRUTAS}[3]
    Log    ${FRUTAS}[3]
    Log To Console    ${EMPTY}

Adicionar a fruta ${NOVA_FRUTA} na lista pre definida
    Log To Console    ${EMPTY}
    Append To List    ${FRUTAS}    ${NOVA_FRUTA}
    Log    ${FRUTAS}
    Log To Console    ${EMPTY}
