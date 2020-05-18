import requests

rates = requests.get("https://api.exchangeratesapi.io/latest?base=RUB").json()["rates"]
EUR = int(1 / rates["EUR"])
USD = int(1 / rates["USD"])
print(f"€: {EUR}₽ $: {USD}₽")
