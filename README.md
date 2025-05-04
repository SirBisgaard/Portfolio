# Portfolio
This is my personal photo portfolio website. Sir Bisgaard.



## Docker
Here is some helpful docker commands for getting started..

Building the application

`docker build --no-cache --pull -t sirbisgaard/arda:portfolio .`

Run and debug the application

`docker run --rm -p 8080:8080 --name portfolio -it sirbisgaard/arda:portfolio`

Pushing the application to the registry

`docker push sirbisgaard/arda:portfolio`
