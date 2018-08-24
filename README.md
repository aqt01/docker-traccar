# traccar server
Start https://www.traccar.org server with a [stable and basic backend](https://www.traccar.org/postgresql/) (the embedded H2 database)


New tracker GPS devices can connect on port 5000-5150 and see https://www.traccar.org/devices which port the device should use and see https://www.traccar.org/protocols for the supported protocols traccar supports. 

For starting the services. Just do:


```

docker-compose up -d 
docker-compose logs -f

```


For scaling traccar (if needed) just do:

```

$ docker-compose scale traccar=5 server=1

```

(It may not be a good idea because right now the database it's on the filesystem of each container)


## Caddy

This setup has [Caddy](https://caddyserver.com/) A very handful webserver with automatic HTTPS. Below some basic information in order for customizing


### Changing DOMAIN NAME 

Just need to edit .env file in order to set your custom DOMAIN_NAME for the server

DOMAIN_NAME=traccar-example.com


### Caddyfile configuration

The ./Caddyfile configuration file has everything you need for setting up your traccar installation. 

For more information about how to edit the Caddyfile here's  [their official documentation](https://caddyserver.com/docs/caddyfile)


