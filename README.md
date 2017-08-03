## what is tabview?
* view a CSV file in a spreadsheet-like display in textmode (ncurses).
* see https://github.com/jahrome/tabview
* there is also a more recent fork of it - have to look for it

## why a docker container?
* docker is a fast way of starting tabview temporarly (with --rm)
* a peco-based fileselection dialog allows to select a file within $PWD

## How to build
* (only needed if you want to build your own image)
* git clone https://github.com/TimoGo/docker-tabview.git
* docker build -t <imagename> .
* at least Debian 9 (stretch) is required because of peco

## RUN
with given filename:
```docker run -it --env filename=2.csv --rm -v $(pwd):/data  tghode/docker-tabview:latest
```
without filename:
```docker run -it --rm -v $(pwd):/data tghode/docker-tabview:latest
```
Note that the contents of the current directory will be mapped into the container as /data 

## Alias
You can even hide al the gory details of docker:
```alias tabview='docker run -it --rm -v $(pwd):/data tghode/docker-tabview'
```

