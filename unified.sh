#! /bin/bash

path="$1"
fname="$2"

if [ -z $path ]; then
        echo "digite um caminho após o nome do arquivo";
        echo "exemplo unified.sh $(pwd) meu_arquivo.txt";
        exit;
fi

if [ -z $fname ]; then
        echo "digite o nome do arquivo após o caminho";
        echo "exemplo unified.sh $(pwd) meu_arquivo.txt";
        exit;
fi

./fcreate.sh $path $fname && \
./fupdate.sh $path $fname && \
./fread.sh $path $fname && \
./fdelete.sh $path $fname && \
echo "Crud realizado com sucesso!"

