# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 15:40:14 by mkoyamba          #+#    #+#              #
#    Updated: 2023/06/06 15:40:18 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

#install all the program
RUN		apt-get update
RUN		apt-get install -y nginx \
				openssl

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
		-out /etc/nginx/ssl/mkoyamba.crt \
		-keyout /etc/nginx/ssl/mkoyamba.key \
		-subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=mkoyamba/CN=mkoyamba/"

COPY ./conf/nginx.conf /etc/nginx/conf.d

# nginx config
RUN mkdir -p /run/nginx

#the only port allowed
EXPOSE	443

# Start nginx
CMD ["nginx", "-g", "daemon off;"]