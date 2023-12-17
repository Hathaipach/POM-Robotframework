*** Settings ***
Library       SeleniumLibrary
Resource      ../keywords/RegisterKeywords.robot
Resource       ../keywords/HomePageKeywords.robot
Variables      ../resources/config/config.yaml
Variables      ../resources/testdata/testdata.yaml
Suite Setup       Open Browser      ${baseUrl}   chrome


*** Test Cases ***
As a user, I want to register success with valid information
    When user register to future skill platform with ${email} , ${firstname}, ${lastname} , ${mobile}, ${password} and ${confirmpassword}
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"

