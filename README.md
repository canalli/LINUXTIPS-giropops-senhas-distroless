# LINUXtips-Giropops-Senhas
## Criando a imagem
Para criar a imagem clone o repositório e execute o comando abaixo.

```
docker image build -t <seu-registry-aqui>/giropops-senhas-distroless:1.0 .
```

## Executando o redis chainguard

```
docker container run -d --name redis -p 6379:6379 cgr.dev/chainguard/redis
```

## Executando a aplicação principal

```
docker container run -d -p 5000:5000 --name giropops-senhas-distroless canalli/giropops-senhas-distroless:1.0
```

## Autenticação DockerHub

```
docker login
```

## Dockerhub push da imagem
docker push canalli/giropops-senhas-distroless
