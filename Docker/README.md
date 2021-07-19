## Esse tópico, é apenas para conhecimento da imagem criada e que vai ser rodada na nossa conta aws.


- Criar o Dockerfile
- Criar um file na linguagem da aplicação desejada

- logar
`docker login `

- criar o build
`docker build . -t bernardom/imagem-go:1.0.0 `

- enviar sua imagem para seu dockerhub com tag
`docker push bernardom/imagem-go:1.0.2`

 - executar a imagem local
`docker run -p 80:80 -d bernardom/imagem-go:1.0.0`
