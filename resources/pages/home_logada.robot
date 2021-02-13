**Settings***
Documentation   Ações da página home logada

***Keywords***
Logout Link Should Be visible
    Wait for Elements state     css=a[href$=sign_out]    visible     10

Go To Search Page
    Click       css=a[href*=search]
    Wait for Elements state     xpath=//h2[contains(text(), "Buscar")]    visible     10    