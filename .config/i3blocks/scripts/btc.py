import requests


result = 1 / float(requests.get("https://blockchain.info/tobtc?currency=USD&value=1").text)
print(f"{int(result)}$")
