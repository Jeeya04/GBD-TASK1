# pg1: Find GCD of two numbers using a function

def find_gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

print("GCD:", find_gcd(num1, num2))
