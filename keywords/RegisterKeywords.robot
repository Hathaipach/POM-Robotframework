*** Settings ***
Library          SeleniumLibrary
Resource         CommonKeywords.robot
Resource         HomePageKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} , ${firstname}, ${lastname} , ${mobile}, ${password} and ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[ text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email         ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName     ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName      ${lastname}   
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${mobile}  
    CommonKeywords.Wait until element is ready then input text        name=newPassword      ${password}  
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword  ${confirmpassword}    
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@type="checkbox" ]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]
   


