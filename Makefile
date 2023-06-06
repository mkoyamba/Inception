# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkoyamba <mkoyamba@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/06 15:00:42 by mkoyamba          #+#    #+#              #
#    Updated: 2023/06/06 15:00:50 by mkoyamba         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@docker compose -f ./scrs/docker-compose.yml up -d --build

down:
	@docker compose -f ./scrs/docker-compose.yml down

re:
	@docker compose -f scrs/docker-compose.yml up -d --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

.PHONY: all re down clean