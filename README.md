# Mintest_serveur
Projet pour les portes ouvertes de l'ETML où l'on utilise Docker Swarm pour conteneuriser un serveur Minecraft.



---

### Explication des commandes dans le README

1. **Clonage du projet** : 
   - `git clone https://github.com/Evin06/serveur-minetest-docker-swarm.git`
   - Cette commande clone le projet sur votre machine.

2. **Construction de l'image Docker** :
   - `docker build -t minetest-server-image .`
   - Cela crée une image Docker à partir du `Dockerfile` que vous avez dans votre projet.

3. **Initialisation de Docker Swarm** :
   - `docker swarm init`
   - Initialise Docker Swarm pour transformer votre machine en manager. Cette commande est nécessaire pour gérer plusieurs nœuds.

4. **Déploiement du stack Docker Swarm** :
   - `docker stack deploy -c docker-stack.yml minetest`
   - Utilise Docker Swarm pour déployer le service Minetest sur votre cluster Docker. Le fichier `docker-stack.yml` contient la définition des services, réplicas, et volumes.

5. **Vérification du service** :
   - `docker service ls`
   - Permet de vérifier que le service Minetest fonctionne bien avec le bon nombre de réplicas.

6. **Mise à l'échelle du serveur** :
   - `docker service scale minetest-server=5`
   - Augmente le nombre de réplicas pour gérer plus de joueurs en scalant le service Minetest.

7. **Arrêt et nettoyage** :
   - `docker stack rm minetest`
   - Supprime le stack Minetest et arrête les services Docker.

---

### Conclusion

Ce fichier README vous guide à travers le processus de déploiement du serveur Minetest multijoueur avec Docker Swarm. Vous pouvez ajouter ou modifier des sections en fonction de vos besoins, comme la gestion des volumes ou l'ajout de configurations supplémentaires pour le serveur Minetest.
