build:
	docker-compose build

up:
	docker-compose up --build

stop:                                                  
	docker-compose stop

bundle:
	docker-compose run web bundle install

migrate: 
	docker-compose run web rails db:migrate

create:
	docker-compose run web rails db:create

drop:
	docker-compose run web rails db:drop

seed:
	docker-compose run web rails db:seed

bash:
	docker-compose run web bash -c "stty cols 200 && bash"

reset:
	docker-compose run web rails db:drop db:create db:migrate db:seed