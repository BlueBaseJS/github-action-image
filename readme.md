### Bluebase Docker Image

#### Prerequisite
- Docker installed on your OS
- Dockerhub account 
- Access to bluebase repo on Dockerhub

#### Includes
- Bluebase Cli
- Bluebase Web Cli
- Bluebase Expo Cli
- Node
- Yarn
- Expo Cli

#### Build Image
From cache 

`docker build -t bluebasejs/github-actions-image .`

From scratch 

`docker build --no-cache -t bluebasejs/github-actions-image .`

#### Deploy Image
Deploy your built image using the following command

`docker push bluebasejs/github-actions-image`