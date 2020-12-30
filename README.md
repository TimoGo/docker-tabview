

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
you need a csv-file eg demo.csv:
```bash
docker run -it --rm -v $(pwd):/data  tghode/docker-tabview:latest demo.csv
```
Note that the contents of the current directory will be mapped into the container as /data 

## Alias
You can even hide al the gory details of docker:
```bash
alias tabview='docker run -it --rm -v $(pwd):/data tghode/docker-tabview'
```
Using the container:
```bash
$ tabview demo.csv
```
