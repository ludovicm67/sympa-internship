# Sympa internship

Here you will find all the stuff about my six weeks internship on Sympa:

  - My diary: I've written what I did week for week during my internship.

  - Documentation:

    - Apache James: I've decided to write some documentation about Apache
                    James, because I used it for playground for testing JMAP.

    - JMAP: a new protocol to replace IMAP. Very interesting. I decided to 
            write a small documentation about how to authenticate.

  - Report: my report I needed to write for the university.

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

## Build requirements

To build all the pdf files you will need the following dependencies
installed on your machine :

  - `pandoc`: used here to convert all the Markdown files to pdf

  - `texlive-lang-french`: support for the french langage

  - `pdftk`: used for the *report* only, to merge multiple pdf
             files without breaking links

  - `xelatex`: installable on Debian-based distributions with
               `sudo apt install texlive-xetex`
               (used for compiling the cover page from *tex->pdf*)

To build all pdf files, just run `make`, `make all` or `make pdf`.

If you only want to build a specific file:
  - `make diary`: generate the file *diary.pdf* which contains my diary.
  - `make james`: generate the file *doc_james.pdf* wich contains the
                  documentation I've written for Apache James.
  - `make jmap`: generate the file *doc_jmap.pdf* which contains the
                 documentation I've written for the authentication part
                 for JMAP.
  - `make report`: generate the file *report.pdf* which contains my report.

# To conclude

I hope you enjoyed my work!
Feel free to correct if you see some typos or errors.
This intership made me discover the open source world, and working with
such a great community is something very cool!
I'm happy to be part of the community from now :smile:

