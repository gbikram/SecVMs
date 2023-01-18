#!/usr/bin/python3

import requests
from rfeed import *
from datetime import datetime, timedelta

session = requests.session()
session.proxies = {'http':  'socks5h://127.0.0.1:9050',
                   'https': 'socks5h:/127.0.0.1:9050'}
response = session.get("http://alphvmmm27o3abo3r2mlmjrpdmzle3rykajqc5xsj7j7ejksbpsa36ad.onion/api/blog/all/0/9").json()

items = []
for post in response['items']:
    items.append(Item(
            title = post['title'],
            description = post['previewContent'],
            pubDate = datetime.fromtimestamp(post['createdDt']/1000) 
        ))

feed = Feed(
    title = "AlphVM Ransom", 
    link = "alphvmmm27o3abo3r2mlmjrpdmzle3rykajqc5xsj7j7ejksbpsa36ad.onion",
    description = "test",
    items = items
        )
print(feed.rss()) 

