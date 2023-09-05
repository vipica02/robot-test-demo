*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://hatvoinhau.net/Secure/Login?returnurl=%2f
${USERNAME}     0942314259
${PASS}        123456a@

*** Test Cases ***
login
    log    this is a test case
    open browser    ${URL}  ${BROWSER}
    Input Text    xpath=//input[@id='mainContent_login1_LoginCtrl_UserName']    ${USERNAME}
    Input Password    xpath=//input[@id='mainContent_login1_LoginCtrl_Password']    ${PASS}
    Click Button    id=mainContent_login1_LoginCtrl_Login
    Wait Until Page Contains    Đăng xuất    timeout=10s
    sleep    3s
    Close Browser

logout
    log    this is a test case logout
    open browser    ${URL}  ${BROWSER}
    Input Text    xpath=//input[@id='mainContent_login1_LoginCtrl_UserName']    ${USERNAME}
    Input Password    xpath=//input[@id='mainContent_login1_LoginCtrl_Password']    ${PASS}
    Click Button    id=mainContent_login1_LoginCtrl_Login
    Wait Until Page Contains    Đăng xuất    timeout=10s
    sleep    3s

    click element    class=topnavitem
    sleep    3s
    Close Browser