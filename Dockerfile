# através do comando FROM indicamos a imagem e versão
FROM ubuntu:16.04 

# executa a atualização dos pacotes
RUN apt update && apt upgrade -y 

# instala o apache no container 
RUN apt install apache2 -y

# remove o arquivo default gerado pelo apache2 
RUN rm /var/www/html/index.html

# cria um novo arquivo index.html
RUN echo "<h1>meu primeiro container docker</h1>" >> /var/www/html/index.html

# inicia o serviço ao rodar o container 
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

# expõe a porta 80 do container 
EXPOSE 80 

	