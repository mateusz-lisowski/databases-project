import sys
import uuid


def get_file(filename: str):
    """Returns all lines from the given file"""

    lines: [str] = []

    with open(filename, 'r') as f:
        lines = f.readlines()

    return lines


def write_file(filename: str, lines: [str]):
    """Writes all lines to the given file"""

    with open(filename, 'w') as f:
        for line in lines:
            f.write(line)


def main():
    """Main program function""" 

    file_path = sys.argv[1]
    
    lines = get_file(file_path)
    output: [str] = []

    counter = 0

    for line in lines:
        if '~' in line:
            counter += 1
        output.append(line.replace('~', str(uuid.uuid4())))

    print(f"Number of uuids created: {counter}")
    write_file(file_path, lines=output)

if __name__ == '__main__':
    main()
