*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}    chrome
${url login}    https://shipper.id/bos/auth/login
${delay}    2
${menu daftar}    id=btn-tabdaftar
${first name}    id=firstname
${last name}    id=lastname
${email}    id=email
${nomor handphone}    id=handphone
${password}    id=passreg
${confirm password}    id=conpassreg
${address}    id=address
${city}    id=city
${district}    id=suburb
${village}    id=area
${postal code}    id=zipcode
${button daftar}    id=btn-daftar
${email data}    test1008@test.com
${nomor handphone data}    08121002318
${password data}    Test12345

*** Keywords ***
User open link Shipper Bos
    Open Browser    ${url login}    ${browser}
    Maximize Browser Window

BOS Portal page should be open
    Title Should Be    BOS PORTAL | Shipper.id

Success Registration
    Element Should Be Visible    class=notification--success

Error Registration cause exist email or phone number
    Element Should Be Visible    class=notification--error

Checking elements on page Registration
    Click Element    ${menu daftar}
    Execute JavaScript    window.scrollTo(0, 300)
    Element Should Be Visible    ${first name}
    Element Should Be Visible    ${last name}
    Element Should Be Visible    ${email}
    Element Should Be Visible    ${nomor handphone}
    Element Should Be Visible    ${password}
    Element Should Be Visible    ${confirm password}
    Element Should Be Visible    ${address}
    Element Should Be Visible    ${city}
    Element Should Be Visible    ${district}
    Element Should Be Visible    ${village}
    Element Should Be Visible    ${postal code}
    Element Should Be Visible    ${button daftar}

Registration using empty first name                    
    Input Text    ${last name}                     Test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty last name                    
    Input Text    ${first name}                    Tubang
    Clear Element Text    ${last name}
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty email
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Clear Element Text    ${email}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty phone number
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Clear Element Text    ${nomor handphone}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty password
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Clear Element Text    ${password}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty confirmation password
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Clear Element Text    ${confirm password}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty address
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Clear Element Text    ${address}
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty city
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Pilih Kota
    Clear Element Text    ${postal code}
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty district
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty village
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using empty postal code
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Clear Element Text    ${postal code}
    Click Button    ${button daftar}
    Sleep    ${delay}

Registration using valid data
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         ${email data}
    Input Text    ${nomor handphone}               ${nomor handphone data}
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Input Text    ${postal code}                   11730
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}
    Success Registration

Registration using exist email and phone number
    Click Element    ${menu daftar}
    Execute JavaScript    window.scrollTo(0, 300)
    Input Text    ${first name}                    Tubang
    Input Text    ${last name}                     test
    Input Text    ${email}                         test02@test.com
    Input Text    ${nomor handphone}               08123212313
    Input Text    ${password}                      ${password data}
    Input Text    ${confirm password}              ${password data}
    Input Text    ${address}                       Kebon Kacang 87
    Sleep    ${delay}
    Select From List By Label    ${city}           Jakarta Barat, DKI Jakarta
    Sleep    ${delay}
    Select From List By Label    ${district}       Cengkareng
    Sleep    ${delay}
    Select From List By Label    ${village}        Cengkareng Barat
    Textfield Value Should Be    ${postal code}    11730
    Click Button    ${button daftar}
    Sleep    ${delay}

