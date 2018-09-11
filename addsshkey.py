#!/usr/bin/python3
import requests
import os
import json
import subprocess
import getpass

api_url = "https://api.github.com"

# get machine name
result = subprocess.run(["uname", "-n"], stdout=subprocess.PIPE)
key_name = result.stdout.decode('utf-8')

# get public key
ssh_file_path = os.path.expanduser("~/.ssh/id_rsa")
# print(ssh_file_path)
if not os.path.exists(ssh_file_path):
    print("id_rsa.pub file not found.")
    print("Generating new ssh key...")
    cmd = ["ssh-keygen",
           "-t", "rsa",
           "-b", "4096",
           "-f", ssh_file_path,
           "-C", '"your_email@example.com"']
    result = subprocess.run(cmd)#, stdout=subprocess.PIPE)


with open(ssh_file_path + ".pub") as fd:
    new_key = fd.read()
    # print(new_key)

# get pass
password = getpass.getpass(prompt="Github password:")
key = {'title': key_name,
       'key'  : new_key}
auth = ('SolitaryThinker', password)
# r = requests.post(api_url + '/user/keys', auth=('token', access_token), json=key)
r = requests.post(api_url + '/user/keys', auth=auth, json=key)

print(r)
print(r.json())
