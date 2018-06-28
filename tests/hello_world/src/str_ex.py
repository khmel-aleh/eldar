import os
from logging import warn, debug, info, error


def str_ex(equal_string):
    data_directory = str(os.path.abspath(os.curdir))
    try:
        with open(data_directory + '/src/data/test.txt', 'r') as test_file:
            info("File open!")
            for i, line in enumerate(test_file):
                info(str(i + 1) + ". line: " + line)
                if equal_string in line:
                    info("Find coincidence!")
                    return True
    except IOError:
            error("File not opened or not found.")
            return "NFF"
    return False
