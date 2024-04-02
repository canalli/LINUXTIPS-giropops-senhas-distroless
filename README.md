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
docker container run --name giropops-senhas-distroless -d -p 5000:5000 canalli/giropops-senhas-distroless
```

## Autenticação DockerHub

```
docker login
```

## Dockerhub push da imagem
docker push canalli/giropops-senhas-distroless
