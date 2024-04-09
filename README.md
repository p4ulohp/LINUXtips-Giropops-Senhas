# LINUXtips-Giropops-Senhas
Desafio PICK2024

### Buildando sua Imagem 
``` docker image build -t <yourname/nameimage:tagversion> ```

### Provisionando container Redis
``` docker container run -d -p 6379:6379 --name redis redis ```

### Provisionando container giropops-senhas
``` docker container run -d -p 5000:5000 --env:${REDIS_HOST} --name giropops-senhas <yourname/nameimage:tagversion> ```