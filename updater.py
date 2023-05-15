from os import chdir, system
from sys import stdout

chdir("/Users/AustinYu/Documents/sever")

system("java -Xmx6G -jar minecraft_server.jar --nogui")
stdout.write("\033[2J\033[H")
stdout.flush()

system("git remote add origin https://github.com/justmore5mins/sever.git")
system("git add .")
system("git commit -m \"add\"")
system("git push")
