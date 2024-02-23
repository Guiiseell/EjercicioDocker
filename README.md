# Evaluación DevOps

Con contenedores Dockers despliegar dos servidores web (puerto 8555) y un proxy que se utilice para balancear el tráfico entre los dos servidores web y recibir el tráfico por puerto http (puerto 80).

## Construcción de las imágenes Docker
### Imágenes de los servidores web 
> `docker build -t web_server_1 -f Dockerfile_Web1 .`

> `docker build -t web_server_2 -f Dockerfile_Web2 .`

### Imagen del proxy de balanceo de carga
> `docker build -t load_balancer -f Dockerfile .`

## Ejecución de los contenedores
### Primer servidor web
> `docker run -d --name web_server_1 -p 8555:80 web_server_1`

### Segundo servidor web
> `docker run -d --name web_server_2 -p 8556:80 web_server_2`

### Proxy de balanceo de carga
> `docker run -d --name load_balancer -p 80:80 --link web_server_1 --link web_server_2 load_balancer`
