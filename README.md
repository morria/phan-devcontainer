phan-dev-shell is a development environment for [Phan](https://github.com/phan/phan).

Running this container will drop you into a shell which will be capable of building
and testing [Phan](https://github.com/phan/phan).

## Building

To build phan-dev-shell run `make`.

## Running

To run phan-dev-shell run `make run` or run

```sh
docker run -it -v $HOME:/home/u --rm morria/phan-dev-shell
```

Running it will drop you into ZSH in `/home/u` on the container. From there you can navigate to
where you have Phan checked out and should be able to build it, test it and run it on code.

```sh
cd development/phan
composer install
./test
```
