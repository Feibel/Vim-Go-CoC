# Vim-Go-CoC
Docker container for Go development with Vim-Go and CoC

Alpine base image with vim-go and coc installed using vim-plug.

To use include preferred settings in .vimrc and run the following from the cloned repo:
```
docker build -t vim-go-coc .
docker run --rm -it vim-go-coc
```


