***Settings***
Documentation   Ações de Navegação no Parodify

***Keywords***
Go To Search Page
    Click       css=a[href*=search]
    Wait for Elements state     xpath=//h2[contains(text(), "Buscar")]    visible     10 

Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Wait for Elements state     xpath=//h2[contains(text(), "Músicas")]    visible     10

Go To Sertanejo Categorie
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait for Elements state     xpath=//h2[contains(text(), "Sertanejo")]    visible     10        