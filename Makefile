all:
	docker build -t morria/phan-dev-shell .
run:
	docker run -it -v $HOME:/home/u --rm morria/phan-dev-shell
