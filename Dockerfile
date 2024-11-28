FROM minetest/minetest:stable

# Expose le port par défaut de Minetest
EXPOSE 30000

# Volume pour les données persistantes
VOLUME /data

# Commande de démarrage par défaut
CMD ["minetest", "--server", "--world", "/data/world", "--gameid", "minetest"]
