# system_info.py>


def py_ver():
    from sys import version_info
    split = "."
    ver = str(version_info[0]) + split + str(version_info[1]) + \
          split + str(version_info[2])
    system = "Python Version: \t" + ver
    print(system)


def date():
    from datetime import datetime
    tod = datetime.now()
    output = "Date [DD/MM/YY]:\t" + tod.strftime("%d/%m/%Y") + \
             "\nTime [HH:MM]:\t\t" + tod.strftime("%H:%M")
    print(output)
