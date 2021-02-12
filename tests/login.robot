***Settings***
Documentation   Testes da pagina de Login

Library     Browser

Resource    ../resources/base.robot

# Gancho para tirar screenshot após a execução de cada teste
Test Teardown   Take Screenshot

**Test Cases***
Login com sucesso
    [tags]      smoke
    Open Login Page
    Login With  papito@parodify.com  pwd123
    Logout Link Should Be visible

Senha Incorreta
    Open Login Page
    Login With  papito@parodify.com  abc123
    Alert Should Browser  Opps! Dados de acesso incorretos!

Email não existe
    Open Login Page
    Login With  404@parodify.com  pwd123
    Alert Should Browser  Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page
    Login With  ${EMPTY}  pwd123
    Alert Should Browser  Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login With  papito@parodify.com  ${EMPTY}
    Alert Should Browser  Opps! Dados de acesso incorretos!   