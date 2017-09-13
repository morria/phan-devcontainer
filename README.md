phan-dev-shell is a development environment for [Phan](https://github.com/phan/phan).

Running this container will drop you into a shell which will be capable of building
and testing [Phan](https://github.com/phan/phan).

This container is hosted at https://hub.docker.com/r/morria/phan-dev-shell/. If
you'd prefer not to build from source, you can just run it via the following.

```sh
docker run -it -v $HOME:/home/u --rm morria/phan-dev-shell
```

## Building and Running

To build phan-dev-shell just run

```sh
docker build -t morria/phan-dev-shell .
```

Once built, you can run phan-dev-shell via the following.

```sh
docker run -it -v $HOME:/home/u --rm morria/phan-dev-shell
```

Running it will drop you into ZSH in `/home/u` on the container which will be mounted to your
home directory from the host machine. From there you can navigate to where you have
[Phan](https://github.com/phan/phan) checked out and should be able to build, test and run it.

```sh
cd development/phan
composer install
./test
```

