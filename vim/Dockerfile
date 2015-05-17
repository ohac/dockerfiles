FROM debian
RUN apt-get update && apt-get install -y vim && apt-get clean
RUN touch /.viminfo
RUN mkdir /.vim
ADD vimrc /.vimrc
RUN chown -R 1000 /.viminfo /.vim /.vimrc
WORKDIR /data
CMD vim .
# docker build -t ohac/vim .
# docker run -it --rm -v $PWD:/data -w /data -u 1000 ohac/vim
