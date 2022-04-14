*** Settings ***
## import libraly ##
Library    Selenium2Library
## import file variables ##
Resource    Variables.robot

*** Keywords ***
## การค้นหา google calculator ##
search calculator
    Input Text    name=q    google calculator    ## ใส่ข้อความ google calculator ##
    sleep  2    ## สั่งให้บอทหยุดพัก 2 วินาที ##
    Click Element 	 xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]    ## สั่งให้บอทกดปุ่ม ค้นหา ##

## สั่งให้กดปุ่ม 2 + 2 = จากนั้นเช็คคำตอบถ้า = 4 ถึงจะผ่าน ##
plus calculator
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[4]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div    
    Element Text Should Be 	 xpath=//*[@id="cwos"] 	 expected=4    

## สั่งให้กดปุ่ม 2 - 2 = จากนั้นเช็คคำตอบถ้า = 0 ถึงจะผ่าน ##
minus calculator
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[4]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div    
    Element Text Should Be 	 xpath=//*[@id="cwos"] 	 expected=0    

## สั่งให้กดปุ่ม 2 * 2 = จากนั้นเช็คคำตอบถ้า = 4 ถึงจะผ่าน ##
multiply calculator
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div   
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[3]/td[4]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div    
    Element Text Should Be 	 xpath=//*[@id="cwos"] 	 expected=4    

## สั่งให้กดปุ่ม 2 / 2 = จากนั้นเช็คคำตอบถ้า = 1 ถึงจะผ่าน ##
divide calculator
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[2]/td[4]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[4]/td[2]/div/div    
    Click Element 	 xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/div[3]/div/table[2]/tbody/tr[5]/td[3]/div/div   
    Element Text Should Be 	 xpath=//*[@id="cwos"] 	 expected=1    


