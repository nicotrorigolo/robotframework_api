import requests
import json

def recuperer_toutes_les_informations_sur_la_consommation_carbone(url):
    requete_url = "https://api.websitecarbon.com/site?url={}".format(url)
    reponse_body = requests.get(url=requete_url)
    reponse_body_json = json.loads(reponse_body.text)
    return reponse_body_json

def recuperer_la_consommation_de_la_page(url):
    requete_url = "https://api.websitecarbon.com/site?url={}".format(url)
    reponse_body = requests.get(url=requete_url)
    reponse_body_json = json.loads(reponse_body.text)
    consommation = str(reponse_body_json["statistics"]["co2"]["renewable"]["grams"])[0:5]
    print('La consommation de carbone de la page' +' ' + url + ' ' + 'est de' + ' ' + consommation + ' ' + 'g de CO2')
    return consommation

