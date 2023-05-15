from os import chdir, system

chdir("/Users/AustinYu/Documents/sever")

system("java -Xmx6G -jar minecraft_server.jar --nogui")

system("git remote add origin https://github.com/justmore5mins/sever.git")
system("git add .")
system("git commit -m \"add\"")
system("git push")
