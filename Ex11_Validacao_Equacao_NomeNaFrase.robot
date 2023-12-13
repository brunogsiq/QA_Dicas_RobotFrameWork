*** Test Cases ***
Cenário de teste01: Realizar a soma de dois valores
    Realizar a soma de 2+2

Cenário de teste02: Deve conter o nome Maria
    verificar se contem Maria na frase "meu nome é Maria"

Cenário de teste03: Deve conter o nome Corinthians
    verificar se contem Corinthians na frase "Vai Corinthians"


*** Keywords ***
Realizar a soma de 2+2
    ${RESULTADO}    Evaluate    2 + 2
    Log To Console    ${RESULTADO}
    Log To Console    ${EMPTY}    #Log to console apenas trás a informação a tela

verificar se contem ${NOME1} na frase ""
    Should Be Equal    ${NOME1}    Maria
    Log To Console    ${EMPTY}

verificar se contem ${NOME2} na frase "${FRASE}"
    Should Contain    ${FRASE}    ${NOME2}
    Log To Console    ${EMPTY}
