*** Settings ***
Library     DebugLibrary

Suite Setup      Log To Console    Início da execução.
Test Setup       Log to Console    _P X F_
Test Teardown    Log To Console    Execução finalizada.
Suite Teardown   Log To Console    Resultado(s) do(s) Teste(s).

*** Variables ***
@{LISTA}


*** Test Cases ***
Executar exemplo de FOR Simples
    Executar exemplo de FOR Simples

Exemplo de FOR Simples
    [Tags]    for1
    Executar exemplo de FOR Simples 2

Exemplo de FOR In Range
    [Tags]    for2
    Executar exemplo de FOR In Range

Exemplo de FOR In Range 2
    Executar exemplo de FOR In Range 2

Exemplo de BREAK
    Executar exemplo de BREAK

Exemplo de While com IF
    [Tags]    while
    Executar exemplo de While com IF


*** Keywords ***
Executar exemplo de FOR Simples
    FOR    ${Elemento}    IN    @{LISTA}
        Log to console    ${Elemento}
    END

Executar exemplo de FOR Simples 2
    @{LISTA}    create list    ${1}    ${2}    ${3}
    FOR    ${elemento}    IN    @{LISTA}
        IF    ${elemento} == 2
            log    ${lista}[${elemento -1}]
            Log to console    ${lista}[${elemento -1}]
        END
    END

Executar exemplo de FOR In Range
    FOR    ${indice}    IN RANGE    10
        Log to console    ${indice}
    END

Executar exemplo de FOR In Range 2
    FOR    ${indice}    IN RANGE    1    11
        Log to console    ${indice}
    END

Executar exemplo de BREAK
    Log to Console    ${EMPTY}
    FOR    ${valor}    IN    1    2    3    4    5
        IF    ${valor} == 3    BREAK    ELSE  Log to Console  ${valor}
    END

Executar exemplo de While com IF
    ${x}    Set Variable    1
    ${y}    Set Variable    0

    Log to console    ${EMPTY}
    Log to console    Estou antes do while!

    WHILE    ${x} != 0    limit=15
        ${y}    Evaluate    ${y} + 1
        IF    ${y} == 10
            ${x}    set variable    0
            Log to console    vou sair do while!
        ELSE
            Log to console    Eu sou a iteracao ${y} e por isso nao terminou ainda!
        END
    END
    Log to console    Já saiu do while!
