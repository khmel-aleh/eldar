*** Settings ***
Library           src/str_ex.py

*** Variables ***
${line_equal}     Hello World!
${NFF}            NFF

*** Test Cases ***
Find file
    ${check}=           Check coincidence        ${line_equal}
    should not be equal as strings      ${check}         ${NFF}

Find coincidence
    ${check}=       Check coincidence        ${line_equal}
                    should not be equal as strings     ${check}    ${NFF}
                    should be true           ${check}

*** Keywords ***
Check coincidence
    [Arguments]                            ${line}
    ${result}=    str_ex                   ${line}
    [Return]      ${result}

