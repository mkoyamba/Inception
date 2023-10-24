# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 15:44:07 by mkoyamba          #+#    #+#              #
#    Updated: 2023/10/24 15:45:01 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt update -y 
RUN apt install php-fpm php-mysql mariadb-client -y
RUN apt install curl -y

COPY ./tools/wordpress.sh /
RUN chmod +x /wordpress.sh
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN mkdir /run/php

CMD ["/wordpress.sh"]