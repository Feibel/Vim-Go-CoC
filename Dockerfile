FROM golang:alpine

# Install necessary packages
RUN apk add --no-cache \
   curl \
   git \
   wget \
   vim \
   dos2unix \ 
   nodejs \
   golangci-lint \
   bash

# Set terminal color palette
ENV TERM=xterm-256color

# Get vim-plug script
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy .vimrc and convert to unix
COPY .vimrc /root/.vimrc
RUN dos2unix /root/.vimrc

# Install plugins in silent mode
RUN vim -E -s -u ~/.vimrc +PlugInstall +qall

# Run vim-go's GoInstallBinaries (in silent mode)
RUN vim -E -s -u ~/.vimrc +GoInstallBinaries +qall || true

# Create working dir
WORKDIR /workspace

# Load vim ensuring bash remains open
CMD ["bash", "-c", "vim; exec bash"]
