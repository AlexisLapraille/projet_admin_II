
creer network : 
`docker network create --driver bridge --subnet 172.16.2.0/24 --gateway 172.16.2.254 reseau-intern`

creer image
`docker build -t soa .`

tag image


push image


run image :
`docker run --name soa -d --net reseau-intern --ip 172.16.2.1 --network-alias soa loulou42/soa-adminproject`