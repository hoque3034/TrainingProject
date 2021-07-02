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

    log to console  ${response.status_code}
    log to console  ${response.content}



