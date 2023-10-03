## delayed jobの起動
```
docker-compose exec -it web rails jobs:work
```

## sidekiqの起動
```
docker-compose exec -it web bundle exec sidekiq -c 1
```

## resqueの起動
```
docker-compose exec -it -e "QUEUE=*" web rails resque:work
docker-compose exec -it -e "QUEUE=*" -e "COUNT=2" web rails resque:workers
```
