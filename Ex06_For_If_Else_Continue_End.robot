*** Settings ***
Library         SeleniumLibrary

Suite Setup      Log To Console    Início da execução.
Test Setup       Log to Console    _P X F_
Test Teardown    Log To Console    Execução finalizada.
Suite Teardown   Log To Console    Resultado(s) do(s) Teste(s).

*** Test Cases ***
Cenário 01 : Condicionais
    Verifica se 2 > 1

Cenário 02 : Condicionais
    Verifica se 2 < 1

Cenario: Validar se numero é maior que 2
    Checkar numero 1 é maior que dois

Exemplo de CONTINUE
    Executar exemplo de CONTINUE

*** Keywords ***
Verifica se ${var1} > ${var2}
    IF    ${var1} > ${var2}
        Log To Console    resposta verdadeiro
    ELSE
        Log To Console    resposta falsa
    END

Verifica se ${var3} < ${var4}
    IF    ${var3} < ${var4}
        Log To Console    resposta falsa
    ELSE
        Log To Console    resposta verdadeiro
    END

Checkar numero ${VALOR1} é maior que dois
    Log to console    ${EMPTY}
    IF    ${VALOR1} > 2
        Log to console    O numero ${VALOR1} é maior que dois
    ELSE
        IF    ${VALOR1} == 2
            Log to console    O numero ${VALOR1} é igual a dois
        ELSE
            Log to console    O numero ${VALOR1} é menor que dois
        END
    END
    Log to console    Terminou o codigo

Executar exemplo de CONTINUE
  Log to Console  ${EMPTY}
  FOR  ${valor}  IN  1  2  3  4  5
    IF  ${valor} == 2
      CONTINUE
    ELSE
      Log to Console  ${valor}
    END
  END
