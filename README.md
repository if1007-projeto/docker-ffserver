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

### Testando o ambiente

Para testar o ambiente, vamos transmitir um vídeo de um arquivo local. Dentro da raiz do projeto, utilize o comando abaixo para fazer o download de um vídeo exemplo.

```bash
wget file-examples.com/wp-content/uploads/2017/04/file_example_MP4_1280_10MG.mp4 -O data/video.mp4
```

Agora vamos transmitir o vídeo para o _ffserver_ utilizando a ferramenta `ffmpeg`.

```bash
docker-compose exec ffserver ffmpeg -re -i video.mp4 http://localhost:8090/feed.ffm
```

Depois de executar os comandos acima, abra a url http://localhost:8090/live.mjpg em qualquer browser para vizualizar o streaming.

**Observação:** Caso queira fazer o teste com outro vídeo, basta colocar o arquivo no diretório `data` e executar o comando acima, substituindo `video.mp4` pelo nome do arquivo que deseja transmitir.
