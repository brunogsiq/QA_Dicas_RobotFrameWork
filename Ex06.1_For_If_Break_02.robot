*** Test Cases ***
Exemplo de BREAK
    Executar exemplo de BREAK

*** Keywords ***
Executar exemplo de BREAK
  Log to Console  ${EMPTY}
  FOR  ${valor}  IN  1  2  3  4  5
    IF  ${valor} == 3  BREAK  ELSE  Log to Console  ${valor}
  END
