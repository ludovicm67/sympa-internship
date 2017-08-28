# Sympa internship

To build all the pdf files, just run `make`, `make all` or `make pdf`.
You will need to have `pandoc` for all pdf files, and `pdftk` and 
`xelatex` (installable on Debian-based distributions with `sudo apt 
install texlive-xetex`) installed on your machine.

## Compiled versions

  - DIARY (fr):
    https://stage.ludovic-muller.fr/sympa/diary.pdf

  - Documentation (en):

    - Apache James:
      https://stage.ludovic-muller.fr/sympa/doc_james.pdf

    - JMAP:
      https://stage.ludovic-muller.fr/sympa/doc_jmap.pdf

  - Report (fr):
    https://stage.ludovic-muller.fr/sympa/report.pdf

## DIARY

To build the pdf, just run `make diary`.

I've written in the diary what I did week for week (in French) during 
my six weeks internship.

## Documentation

### Apache James

To build the pdf, run `make james`. It will create the `doc_james.pdf` 
file. You can also read directly what it on the `docs/james/` folder.

This documentation will present you quickly what is James, and how to get 
started and setup in a easy way using `docker-compose` to have a 
playground for JMAP.

### JMAP

To build the pdf, run `make jmap`. It will create the `doc_jmap.pdf` 
file. You can also read directly what it on the `docs/jmap/` folder.

This documentation will explain you the authentication part for JMAP and 
give you the ressources you need to query what you want.

## Report

I had to write an intership report in French, so to build it just run 
`make report` if you don't already have the file `report.pdf`.

# To conclude

I hope you enjoyed my work!
Feel free to correct if you see some typos or errors.
This intership made me discover the open source world, and working with 
such a great community is something very cool!
I'm happy to be part of the community from now :smile:
