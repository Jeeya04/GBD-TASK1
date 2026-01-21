# pg2: Shift each character by one position (ASCII concept)

def shift_string(s):
    result = ""

    for char in s:
        if char.isalpha():
            result += chr((ord(char) - 97 + 1) % 26 + 97)
        else:
            result += char

    return result


print(shift_string("hello world"))
