FROM cgr.dev/chainguard/python:latest-dev AS builder
WORKDIR /app
COPY giropops/requirements.txt .
RUN pip install -r requirements.txt

FROM cgr.dev/chainguard/python:latest

WORKDIR /app
COPY giropops .
COPY --from=builder /home/nonroot/.local/lib/python3.12/site-packages /home/nonroot/.local/lib/python3.12/site-packages
EXPOSE 5000
ENV PATH=$PATH:/home/nonroot/.local/bin
ENV REDIS_HOST=172.17.0.2
ENTRYPOINT ["/usr/bin/python", "-m", "flask", "run", "--host=0.0.0.0"]
