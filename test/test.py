#! /usr/bin/env python3

import sys


def main():
    # Warning: During this test, the global context will be switch to test
    #
    # identify current task context
    # switch to an empty task context
    # add some tasks
    # display the task
    # display the kanban view
    # switch to the previous task context
    # remove the test context
    print(sys.argv[0])


if __name__ == '__main__':
    main()
