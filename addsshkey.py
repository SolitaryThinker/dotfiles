import requests
import os
import json
import subprocess

access_token = 'c1b7ffc1da2949250f5c3bd0e5f0c97731b105f2'
url = "https://api.github.com"

# get machine name
result = subprocess.run(["uname", "-n"], stdout=subprocess.PIPE)
key_name = result.stdout.decode('utf-8')


new_key = input("Enter new key:\n")

key = {'title': key_name,
       'key'  : new_key}

r = requests.post(url + '/user/keys', auth=('token', access_token), json=key)

print(r)
print(r.json())
