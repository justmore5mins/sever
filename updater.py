from os import chdir, system

chdir("/Users/AustinYu/Documents/sever")

system("git remote add origin https://github.com/justmore5mins/sever.git")

system("git add .")
system("git commit -m \"add\"")
system("git push")