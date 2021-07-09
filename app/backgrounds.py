from random import randint, random

scss_files = ["bubbles.css", "purple.css"]


def get_random_background():
    random_index = randint(0, len(scss_files) - 1)
    return scss_files[random_index]
