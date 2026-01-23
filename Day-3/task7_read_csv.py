import csv

with open("data.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["id", "name", "age"])
    writer.writerow([1, "Aman", 22])
    writer.writerow([2, "Riya", 21])

with open("data.csv", "r") as f:
    reader = csv.reader(f)
    for row in reader:
        print(row)
