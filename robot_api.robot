*** Settings ***
Library           RequestsLibrary
Library    OperatingSystem

*** Variables ***
${browser}        chrome
${url}    http://www.google.fr/
${time}    2
@{search}    boulanger    pain    brioche    bonbon    Connexion

${base_url}    https://certtransaction.elementexpress.com/
${bearer}    E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648801

*** Keywords ***
Manipuler requete simple
    ${response}     GET  https://www.google.com
    Log To Console    ${response}

manipuler requete avec bearer
    Create Session    mysession    ${base_url}

    ${header}    Create Dictionary    Authorization=${bearer}    Content-Type=text/xml
    ${req_body}    Get File    resultat_api.txt

    ${response}    Post Request    mysession    ${req_body}    ${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}


*** Test Cases ***
API
    Manipuler requete simple
    manipuler requete avec bearer


