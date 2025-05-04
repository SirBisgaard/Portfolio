# Portfolio
A portfolio website in blazor.


## Docker
Here is some helpful docker commands for getting started..

Building the application

`docker build --no-cache --pull -t sirbisgaard/arda:portfolio .`

Run and debug the application

`docker run --rm -p 8080:8080 --name portfolio -it sirbisgaard/arda:portfolio`

Pushing the application to the registry

`docker push sirbisgaard/arda:portfolio`
