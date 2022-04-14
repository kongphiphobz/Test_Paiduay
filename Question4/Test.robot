*** Settings ***
## import libraly ##
Library    Selenium2Library 
## import file keyword ##
Resource    Keyword.robot
## import file variables ##
Resource    Variables.robot
## import close all browsers ##
Test Teardown     Close All Browsers

*** Test Cases ***
## plus number 2+2=4 ##
Plus
    Open Browser    ${host}    browser=chrome    ## สั่งเปิด browsers ##
    Maximize Browser Window    ## ขยายขนาดหน้าจอ ##
    search calculator    ## เรียกใช้ keyword ค้นหา google calculator ##
    plus calculator    ## เรียกใช้ keyword การบวกเลข ##
    sleep  3    ## สั่งให้บอทหยุดพัก 3 วินาที ##
    [Teardown]    Close All Browsers    ## สั่งปิด browsers ## 

## minus number 2-2=0 ##
Minus
    Open Browser    ${host}    browser=chrome    ## สั่งเปิด browsers ##
    Maximize Browser Window    ## ขยายขนาดหน้าจอ ##
    search calculator    ## เรียกใช้ keyword ค้นหา google calculator ##
    minus calculator    ## เรียกใช้ keyword การลบเลข ##
    sleep  3    ## สั่งให้บอทหยุดพัก 3 วินาที ##
    [Teardown]    Close All Browsers    ## สั่งปิด browsers ## 

## multiply number 2*2=4 ##
Multiply
    Open Browser    ${host}    browser=chrome    ## สั่งเปิด browsers ##
    Maximize Browser Window    ## ขยายขนาดหน้าจอ ##
    search calculator    ## เรียกใช้ keyword ค้นหา google calculator ##
    multiply calculator    ## เรียกใช้ keyword การคูณเลข ##
    sleep  3    ## สั่งให้บอทหยุดพัก 3 วินาที ##
    [Teardown]    Close All Browsers    ## สั่งปิด browsers ## 

## divide number 2/2=1 ##
Divide
    Open Browser    ${host}    browser=chrome    ## สั่งเปิด browsers ##
    Maximize Browser Window    ## ขยายขนาดหน้าจอ ##
    search calculator    ## เรียกใช้ keyword ค้นหา google calculator ##
    divide calculator    ## เรียกใช้ keyword การหารเลข ##
    sleep  3    ## สั่งให้บอทหยุดพัก 3 วินาที ##
    [Teardown]    Close All Browsers     ## สั่งปิด browsers ##