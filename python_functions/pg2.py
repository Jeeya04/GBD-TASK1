# pg2: Find maximum number in a list without using max()

def find_maximum(numbers):
    largest = numbers[0]
    for value in numbers:
        if value > largest:
            largest = value
    return largest

nums = [3, 7, 2, 9, 4]
print("Maximum value:", find_maximum(nums))
