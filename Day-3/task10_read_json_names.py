import json

users = [
    {"name": "Aman", "age": 22},
    {"name": "Riya", "age": 21},
    {"name": "Karan", "age": 25}
]

with open("users.json", "w") as f:
    json.dump(users, f)

with open("users.json", "r") as f:
    data = json.load(f)

for user in data:
    print(user["name"])
