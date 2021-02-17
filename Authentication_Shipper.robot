*** Settings ***
Library     Selenium2Library
Resource    Resource_Registration.robot
Resource    Resource_Forgot_Password.robot
Resource    Resource_Login.robot

*** Test Cases ***
Registration Shipper Bos
    Given User open link Shipper Bos
    And BOS Portal page should be open
    And Checking elements on page Registration
    And Registration using empty first name
    And Registration using empty last name
    And Registration using empty email
    And Registration using empty phone number
    And Registration using empty password
    And Registration using empty confirmation password
    And Registration using empty address
    And Registration using empty city
    And Registration using empty district
    And Registration using empty village
    And Registration using empty postal code
    And Registration using valid data
    And Registration using exist email and phone number
    Then Error Registration cause exist email or phone number

Forgot Password Shipper
    When User try Forgot Password
    And Checking elements in page Forgot Password
    And Forgot Password using empty email or phone number
    And Forgot Password using non exist email or non exist phone number
    And Forgot Password using valid data
    Then page Login should be display

Login Shipper
    When user try Login
    And Checking elements in page Login
    And Login using empty email and empty password
    And Login using empty email and valid password
    And Login using valid email and empty password
    And Login using non exist email and valid password
    And Login using invalid email and valid password
    And Login using valid email and valid password
    Then page Dashboard should be display