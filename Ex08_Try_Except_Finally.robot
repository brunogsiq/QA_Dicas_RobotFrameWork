*** Settings ***
Library         SeleniumLibrary

Test Setup      Log To Console    _P X F_


*** Test Cases ***
Cenário 01 : Condicionais
    Verifica se 2 > 1

Cenário 02 : Condicionais
    [Tags]    ct2
    Verifica se 2 < 1

Cenario 03: Exemplo de TRY, EXCEPT e FINALLY
    Somar 1 com B

Cenário 04 : Condicionais
    Verifica se 1 > 2


*** Keywords ***
Verifica se ${var1} > ${var2}
    TRY
        IF    ${var1} > ${var2}    FAIL    Deu certo!
    EXCEPT
        Log To Console    Deu errado!
    FINALLY
        Log To Console    Concluiu o teste!
    END

Verifica se ${var3} < ${var4}
    IF    ${var3} < ${var4}
        Log To Console    resposta verdadeiro
    ELSE
        Log To Console    resposta falso
    END

Somar ${VLR1} com ${VLR2}
    Log to console    ${EMPTY}
    TRY
        ${SOMA}    Evaluate    ${VLR1} + ${VLR2}
        ${R}    Set Variable    O resultado da soma é: ${SOMA}
    EXCEPT
        ${R}    Set Variable    Erro ao somar os termos ${VLR1} e ${VLR2}. Verifique se são números
    FINALLY
        Log to console    ${R}
    END

Verifica se ${var1} > ${var2}
    TRY
        IF    ${var1} > ${var2}    FAIL    Deu errado
    EXCEPT
        Log To Console    Deu certo!
    FINALLY
        Log To Console    Concluiu o teste!
    END
