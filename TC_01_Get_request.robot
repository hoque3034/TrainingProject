*** Settings ***
Library     RequestsLibrary

*** Variables ***

${base_url}      https://jsonplaceholder.typicode.com/
${key}           posts/
${e_id}          1
*** Test Cases ***
Get_post_information
    create session  post_session    ${base_url}
    ${response}=     GET On Session     post_session    ${key}${e_id}

    #log to console  ${response.status_code}
    #log to console  ${response.content}

    #Validation
    ${status_code} =    set variable   ${response.status_code}
    should be equal as integers  ${status_code}     200





    #validations added by anika
    ${status_code} =    convert to string   ${response.status_code}
    should be equal  ${status_code}     200



