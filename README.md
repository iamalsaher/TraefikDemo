# TraefikDemo
A POC to run Traefik for dynamic registration of services

Steps:  
1.Build the whoami container(cd whoami; docker build . -t whoami)  
2.Start Traefik container by docker-compose.yml  
3.Use deploy.sh to deploy a container and watch it get registered on subdomain.domain.com/dashboard/  
4.Replace all instanced of the word "initial" with lets say "final" in deploy.sh and deploy another container
5.Access the containers at domain.subdomain.com/initial and domain.subdomain.com/final