# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 15:40:14 by mkoyamba          #+#    #+#              #
#    Updated: 2023/10/24 15:33:04 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:bullseye

RUN		apt-get update && apt-get install -y nginx openssl

RUN mkdir -m 775 /etc/nginx/ssl
RUN openssl req -newkey rsa:2048 -x509 -days 365 -nodes \
		-out /etc/nginx/ssl/mkoyamba.crt \
		-keyout /etc/nginx/ssl/mkoyamba.key \
		-subj "/C=BE/ST=Brussels/L=Brussels/O=19 School/OU=mkoyamba/CN=mkoyamba/"

COPY tools/config /etc/nginx/sites-available/default
COPY conf/nginx.conf /etc/nginx/nginx

EXPOSE	443

CMD ["nginx", "-g", "daemon off;"]