# pg2: Find unique characters from a list of strings

def unique_characters(strings):
    chars = set()

    for word in strings:
        for ch in word:
            chars.add(ch)

    return chars


strings = ["hello", "world"]
print(unique_characters(strings))
