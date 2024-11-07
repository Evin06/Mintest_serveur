#!/bin/bash

# Créer une sauvegarde du monde
tar -czf /minetest/backups/$(date +%Y%m%d%H%M%S).tar.gz /minetest/worlds
echo "Sauvegarde réalisée le $(date)" >> /minetest/backups/backup.log
