# dockerfile-pdflatex
Dockerfile to generate PDF from LaTeX sources.

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

- The container is running in a detach mode with interactive tty
- The shared folder is a non-existing / empty folder
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
