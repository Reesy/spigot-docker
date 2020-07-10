### spigot-docker
A dockerfile for building a spigot based minecraft server.

### Prequisite
Build spigot and copy the resulting .jar file into the minecraft folder and rename it to spigot.jar 
The scripts folder should like like :

/scripts/  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;eula.txt  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start.sh  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spigot.jar  

### To create an image
Build spigot and copy the resulting .jar file into the minecraft folder and rename it to spigot 
From the same directory as the Docker file run:

```docker build -t spigot:0.0.x .```

### To run an image

```docker run --name=mc -p 25565:25565 spigot:0.0.x```

### To run an image with volume 
```docker run --name=mc -v "/desired/folder/on/host:/minecraft" -p 25565:25565 spigot:0.0.1```