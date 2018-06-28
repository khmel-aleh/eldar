*** Settings ***
Library           src/str_ex.py

*** Variables ***
${line_equal}     Hello World!

*** Test Cases ***
Correct
    ${check}=     Check strings            ${line_equal}
                  should be true           ${check}

*** Keywords ***
Check strings
    [Arguments]                            ${line}
    ${result}=    str_ex                   ${line}
    [Return]      ${result}

