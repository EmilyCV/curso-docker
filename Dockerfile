FROM node:14
WORKDIR /app-node
# ARG - carrega variáveis apenas no momendo de build da imagem.
ARG PORT_BUILD=8080
# ENV - carrega variáveis que serão utilizadas no container.
ENV PORT=$PORT_BUILD
EXPOSE $PORT_BUILD
COPY . .
RUN npm install
ENTRYPOINT npm start
