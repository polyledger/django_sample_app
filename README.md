# Getting started

## Setup

```
docker-machine create djangosampledev
eval $(docker-machine env djangosampledev)
docker-machine env djangosampledev > .env.development
echo "SECRET_KEY_BASE=`python -c \"import string,random; uni=string.ascii_letters+string.digits+string.punctuation; print repr(''.join([random.SystemRandom().choice(uni) for i in range(random.randint(45,50))]))\"`" >> .env.development
```

## Building and running the image

```
eval $(docker-machine env djangosampledev)
docker-compose up --build
```

# Enjoy

```
open http://`docker-machine ip djangosampledev`:3000
```
