class Logger:
    def __enter__(self):
        print("Block started")

    def __exit__(self, exc_type, exc_val, exc_tb):
        print("Block ended")

with Logger():
    print("Inside block")
