*** Settings ***
Library     Selenium2Library
Resource    Resource_Registration.robot
Resource    Resource_Forgot_Password.robot

*** Variables ***
${email or hp}    id=emailHp
${passwordLogin}    id=pwd
${remember me}    xpath=/html/body/section/div[3]/div[2]/div[1]/form/div[3]/div/div[1]/div/label/span
${link forgot password}    id=link-forgotpass
${button login}    id=btn-masuk
${delay}    2

*** Keywords ***
When user try Login
    Click Link    ${link login after error}
    Sleep    ${delay}
    Title Should Be    BOS PORTAL | Shipper.id

Checking elements in page Login
    Element Should Be Visible    ${email or hp}
    Element Should Be Visible    ${passwordLogin}
    Element Should Be Visible    ${link forgot password}
    Element Should Be Visible    ${button login}

Login using empty email and empty password
    Click Button    ${button login}
    Sleep    ${delay}

Login using empty email and valid password
    Input Text    ${passwordLogin}    ${password data}
    Click Button    ${button login}
    Sleep    ${delay}

Login using valid email and empty password
    Input Text    ${email or hp}    ${email data}
    Clear Element Text    ${passwordLogin}
    Click Button    ${button login}
    Sleep    ${delay}

Login using non exist email and valid password
    Clear Element Text    ${email or hp}
    Input Text    ${email or hp}    test05672@test.com
    Input Text    ${passwordLogin}    ${password data}
    Click Button    ${button login}
    Error Registration cause exist email or phone number
    Sleep    ${delay}

Login using invalid email and valid password
    Clear Element Text    ${email or hp}
    Input Text    ${email or hp}    test05672
    Clear Element Text    ${passwordLogin}
    Input Text    ${passwordLogin}    ${password data}
    Click Button    ${button login}
    Sleep    ${delay}
    Error Registration cause exist email or phone number
    Sleep    ${delay}

Login using valid email and valid password
    Clear Element Text    ${email or hp}
    Input Text    ${email or phone number}    ${email data}
    Clear Element Text    ${passwordLogin}
    Input Text    ${passwordLogin}    ${password data}
    Click Button    ${button login}
    Sleep    ${delay}

Then page Dashboard should be display
    Title Should Be    Shipper.id