import os


def str_ex(equal_string):
    data_directory = str(os.path.abspath(os.curdir))
    print(data_directory)
    with open(data_directory + '/src/data/test1.txt', 'r') as test_file:
        try:
            for line in test_file:
                if equal_string in line:
                    return True
        finally:
            test_file.close()
    return False
