import requests

from pprint import pprint

API_Key = '34fe6afedca3ba9696777a8a1a91d987'

city = input("enter a city: ")

base_url = "http://api.openweathermap.org/data/2.5/weather?appid="+API_Key+"&q="+city

weather_data = requests.get(base_url).json()

pprint(weather_data)



