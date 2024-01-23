    docker swarm join --token SWMTKN-1-4k63r9mjrc0byx75b3cvywmysa16xk1l5o8vku9loqlkdq12iw-dupmjojdrdpwslrrptei98r0l 10.10.10.100:2377
sudo apt install -y nfs-common
sudo mkdir -p /var/lib/docker/volumes/app/_data
sudo mount 10.10.10.100:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data
