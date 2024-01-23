# projeto-docker-swarm
Simples projeto para prática de uso do Docker Swarm e Vagrant

## Uso
Os arquivos de configuração são responsáveis por criar 4 nós sendo 1 destes o nó manager.
Também está configurado através de scripts utilizados pelo Vagrantfile a consistência dos
dados dos nós. Um volume docker foi criado para isso e utilizado o NFS no diretório desse.

Com o terminal aberto na pasta do projeto:
```
vagrant ssh master
```

Então, após isso, é necessário a execução do seguinte comando:
```
sudo docker service create --name meu-app --mount type=volume,src=app,dst=/usr/local/apache2/htdocs --replicas 15 -dt -p 80:80 httpd
```
