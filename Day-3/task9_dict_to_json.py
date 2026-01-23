import json

data = {
    "id": 1,
    "name": "Aditi",
    "role": "Developer"
}

with open("data.json", "w") as f:
    json.dump(data, f)

print("JSON saved")
