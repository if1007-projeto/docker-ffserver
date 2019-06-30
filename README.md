# Docker FFserver

O Docker FFserver permite fazer streaming de vídeos através de um container Docker.

## Como utilizar

Clone o reposítório:

```bash
git clone https://github.com/if1007-projeto/docker-ffserver.git
```

Inicie o container Docker:

```bash
cd docker-ffserver
mkdir data
docker-compose up -d
```

### Transmitindo um vídeo de um arquivo local:
Com o vídeo no diretório ```data``` execute o comando substituindo o ```video.mp4``` pelo nome do arquivo de vídeo:

```bash
docker-compose exec ffserver ffmpeg -re -i video.mp4 http://localhost:8090/feed1.ffm
```
Em qualquer browser cole a url  http://localhost:8090/live.mjpg e o streaming será exibido.
