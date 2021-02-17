*** Settings ***
Library     Selenium2Library
Resource    Resource_Registration.robot
Resource    Resource_Login.robot

*** Variables ***
${email or phone number}    name=identity
${button reset password before error}    xpath=/html/body/div[2]/div/form/div[2]/div/button
${button reset password after error}    xpath=/html/body/div[3]/div/form/div[2]/div/button
${link login before error}    xpath=/html/body/div[2]/div/form/div[3]/div/a
${link login after error}    xpath=/html/body/div[3]/div/form/div[3]/div/a
${delay}    2
${email exist}    test02@test.com
${phone number exist}    08123212313

*** Keywords ***
Success or Error Forgot Password Warning
    Element Should Be Visible    xpath=/html/body/div[1]

User try Forgot Password
    Click Element    ${link forgot password}
    @{WindowTitle}=    Get Window Handles
    Switch Window       ${WindowTitle}[1]
    Title Should Be    BOS PORTAL | Shipper.id

Checking elements in page Forgot Password
    Element Should Be Visible    ${email or phone number}
    Element Should Be Visible    ${button reset password before error}
    Element Should Be Visible    ${link login before error}

Forgot Password using empty email or phone number
    Click Button    ${button reset password before error}
    Sleep    ${delay}

Forgot Password using non exist email or non exist phone number
    Input Text    ${email or phone number}             uadhuahf@udhuds.com
    Click Button    ${button reset password before error}
    Success or Error Forgot Password Warning
    Sleep    ${delay}

Forgot Password using valid data
    Clear Element Text    ${email or phone number}
    Input Text    ${email or phone number}             ${email exist}
    Click Button    ${button reset password after error}
    Success or Error Forgot Password Warning
    Sleep    ${delay}

Then page Login should be display
    Title Should Be    BOS PORTAL | Shipper.id