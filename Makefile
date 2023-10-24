# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 15:00:42 by mkoyamba          #+#    #+#              #
#    Updated: 2023/10/24 15:54:39 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@mkdir -p /home/mkoyamba/data/mysql
	@mkdir -p /home/mkoyamba/data/html
	@docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	@docker compose -f ./srcs/docker-compose.yml down

clean: down
	@docker compose -f ./srcs/docker-compose.yml down --rmi all -v

fclean: clean
	@sudo rm -rf /home/mkoyamba/data/mysql
	@sudo rm -rf /home/mkoyamba/data/html

re:
	@docker compose -f srcs/docker-compose.yml up -d --build

.PHONY: all re down clean fclean