*** Settings ***
Library    website_carbon_Library.py

*** Variables ***
${browser}        chrome
${url}    https://www.ausy.fr/fr/
${time}    2
@{search}    boulanger    pain    brioche    bonbon    Connexion

${base_url}    https://certtransaction.elementexpress.com/
${bearer}    E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648801

*** Keywords ***
Manipuler requete simple
    ${reponse}     website_carbon_Library.Recuperer La Consommation De La Page    url=${url}
    Builtin.Log    message=${reponse}    

*** Test Cases ***
API
    Manipuler requete simple


