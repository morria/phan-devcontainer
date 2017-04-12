all:
	docker build -t morria/hackbox .
run:
	docker run -it -v $HOME:/home/asm --rm morria/hackbox
