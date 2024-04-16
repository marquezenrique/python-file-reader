import os
import shutil
import time
from tkinter import Tk, simpledialog
from tkinter.filedialog import askopenfilename, askdirectory

def read_file(file_path: str) -> None:
    for i in range(40):
        os.system('cls' if os.name == 'nt' else 'clear')
        print(f"\033[93mReading file: \"{os.path.basename(file_path)}\"\n\033[0m")
        print('-' * 42)
        print('[' + '#' * i + ' ' * (40 - i) + ']')
        print('-' * 42)
        time.sleep(0.01)
    
    os.system('cls' if os.name == 'nt' else 'clear')
    with open(file_path, 'r') as file:
        contents = file.read()
        print(f"\033[93mFile content: \"{os.path.basename(file_path)}\"\n\033[0m")
        print(contents)

    user_response = input("Do you want to copy this file to another directory? (y/n): ")
    os.system('cls' if os.name == 'nt' else 'clear')
    if user_response.lower() != 'y':
        exit()

    destination_dir = askdirectory(title="Select destination directory:")
    if destination_dir:
        new_file_path = os.path.join(destination_dir, os.path.basename(file_path))
        shutil.copy(file_path, new_file_path)
        print(f"File copied to {new_file_path}")

current_dir = os.path.dirname(os.path.realpath(__file__))
Tk().withdraw()
os.system('cls' if os.name == 'nt' else 'clear')
file_path = askopenfilename(initialdir=current_dir)
read_file(file_path)
