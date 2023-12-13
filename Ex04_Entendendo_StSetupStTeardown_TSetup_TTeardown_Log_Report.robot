*** Comments ***

*** Settings ***
Suite Setup         logar a ordem suite setup
Suite Teardown      logar a ordem suite teardown
Test Setup          logar a ordem test setup
Test Teardown       logar a ordem test teardown


*** Test Cases ***
Cenario de teste 01: Dizer que é o cenário 01
    Log                Sou o cenário 01
    Log To Console     Sou o cenário 01

Cenario de teste 01: Dizer que é o cenário 02
    Log                Sou o cenário 02
    Log To Console     Sou o cenário 02

*** Keywords ***
logar a ordem suite Setup
    log to console     ${EMPTY}
    Log                Suite Setup, executa antes de todos os teste.
    Log To Console     Suite Setup, executa antes de todos os teste.

logar a ordem test setup
    log to console     ${EMPTY}
    Log                Test Setup, executa antes de cada cenário.
    Log To Console     Test Setup, executa antes de cada cenário.

logar a ordem test Teardown
    log to console     ${EMPTY}
    Log                Test Teardown, executo após cada cenário.
    Log To Console     Test Teardown, executo após cada cenário.

logar a ordem suite Teardown
    log to console     ${EMPTY}
    Log                Suite Teardown, executo após cada teste.
    Log To Console     Suite Teardown, executo após cada teste.
