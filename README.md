# docker-pdflatex
A Docker image that provides pdflatex with common latex packages. This image inherits from Debian Stretch and avoid issues with texlive package (loss of section numbering for example) from Ubuntu.

# Build the image
```
cd dockerfile-pdflatex
docker build -t pdflatex .
```

# Run your container with a mounted volume
```
docker run -d -it -v /host/path:/root/shared/folder --name pdflatex pdflatex
docker ps
```

- The container is run in detached mode with interactive tty
- The container is named pdflatex

# Generate your PDF from your tex sources
```
# attach bash to the container named pdflatex
docker exec -it pdflatex bash
cd shared/folder

# Generate the pdf from tex file in the current directory
pdflatex -interaction=nonstopmode -halt-on-error \
-output-directory . your-file.tex
```
