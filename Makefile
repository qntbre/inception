all: 
	@docker-compose -f ./docker-compose.yml up

down:
	@docker-compose -f ./docker-compose.yml down

re:
	@docker-compose -f ./docker-compose.yml up --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

.PHONY: all re down clean