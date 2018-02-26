# Dockerfile for 42 school c projects

#### :thumbsdown: This is not as close to the 42 dumps as I wanted, there are issues you can read at the end of this Readme. Please create issues or update this README with the issues you stumble upon while using the container. :point_down:

## :cd: Installation

You need docker installed on your windows / mac / linux.
(If you have a mac, using this is pointless)

```
git clone https://github.com/bbeldame/42codedockerfile
cd 42codedockerfile
docker build -t 42codedockerfile .
```

## :zap: Usage

Move your directories in the work directory.

If you want to work on lem_in for exemple, your path should look like that : `./work/lem_in/Makefile`

Launch the docker container you previously built, giving your absolute path (`pwd`) in the -v option. (c:\dev\42codedockerfile in the example below, modify it for your use)

```
docker run -ti -v c:\dev\42codedockerfile\work:/root/work 42codedockerfile zsh
```

## :scream: Issues

`limits.h` is known as `stdint.h` in this container. You may get some `unknown type name 'uintmax_t'` using `limits.h`

Not really an issue : compiler use more options on the -Werror flag, so your project may not compile before fixing some stuff.

`Command not found: ^M`, currently working on this, if you have this problem, your file is in CRLF because of windows, and you need to update it to LF to make it readable by linux.

## :hear_no_evil: Disclosure

I'm using oh_my_zsh with a particular configuration, you can fork the project if you don't like it, or just modify the zshrc file.

## :muscle: Contributing

You can help me creating a good working environment close to 42's dumps by making pull requests and open issues.
