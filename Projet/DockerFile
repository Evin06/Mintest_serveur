FROM debian:latest

RUN apt-get update && \
    apt-get install -y minetest-server && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /minetest
EXPOSE 3000

VOLUME /minetest/worlds

CMD ["minetestserver", "--world", "/minetest/worlds/default"]
