# log_print.py>
import os


#def printout(instring)


def checkfile():
    from os import path, getcwd
    srcpath = getcwd()
    logpath = srcpath + path.sep + 'src' + path.sep + 'log'
    filename = "runlog"
    file_type = ".txt"
    if path.isdir(logpath):
        i = 1
        logpath = logpath + path.sep + filename + file_type
        while path.isfile(logpath):
            i = i + 1
            logpath = logpath + path.sep + filename + str(i) + file_type
        if i != 1:
            print("Logfile Name: \t\t" + filename + str(i) + file_type)
            return filename + str(i) + file_type
        else:
            print("Logfile Name: \t\t" + filename + file_type)
            return filename + file_type
    else:
        print("File Path Error")
        return filename + file_type
