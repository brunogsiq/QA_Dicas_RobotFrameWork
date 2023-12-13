*** Settings ***

Library    FakerLibrary    locale=pt_BR

*** Variables ***
${CPF}

*** Test Cases ***

01 - Inserir dado CPF
    Dado que estou visualizando o campo "CPF",
    Quando inserir o mesmo,
    Então deve validar o campo.

*** Keywords ***

Dado que estou visualizando o campo "${CPF}",
    #${CPF}    FakerLibrary.CPF
    Set Test Variable    ${CPF}
    [Return]    ${CPF}
Quando inserir o mesmo,
    Log To Console    ${EMPTY}
Então deve validar o campo.
    Log To Console    ${CPF}
