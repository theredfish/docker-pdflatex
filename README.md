# docker-pdflatex
A Docker image that provides pdflatex with common latex packages. This image inherits from Debian Bookworm and avoid issues with texlive package (loss of section numbering for example) from Ubuntu.

# Build the image
```
cd dockerfile-pdflatex
docker build -t pdflatex .
```

# Generate your PDF from your tex sources

Add this to your .zhsrc or .bashrc

```
alias pdflatex='docker run -it --rm -v "${PWD}:/root/shared/folder" --name pdflatex pdflatex'
```

Reload your terminal or type ```source ~/.zshrc``` if using zsh or
```source ~/.bashrc``` if using bash.

Go to your documents directory and then run:

```
pdflatex your-tex-file.tex
```

And the output should be generated on that folder.
