# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 15:36:49 by mkoyamba          #+#    #+#              #
#    Updated: 2023/10/24 15:38:37 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:bullseye

RUN		apt-get update -y && apt-get install mariadb-server mariadb-client -y

COPY	./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN		chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	./tools/mariadb.sh /

WORKDIR	/

RUN		chmod +x ./mariadb.sh

EXPOSE	3306

CMD		["/mariadb.sh"]