all:
	docker build -t hackbox .
run:
	docker run -it -v /Users/asm:/home/asm --rm hackbox
