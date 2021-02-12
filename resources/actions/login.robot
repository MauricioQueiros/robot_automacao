***Settings***
Documentation   Ações da pagina de login

***Keywords***
Open Login Page
    Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium

Login With
    [Arguments]     ${email_args}   ${pass_args}

    Fill Text   css=input[name*=email]   ${email_args}
    Fill Text   css=#user_password  ${pass_args}

    Click   css=input[value='Log in']

Alert Should Browser
    [Arguments]     ${expect_arg}

    Get Text  css=.is-danger .message-body  ==  ${expect_arg}    