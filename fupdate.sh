#! /bin/bash

path="$1"
fname="$2"

if [ -z $path ]; then
        echo "digite um caminho após o nome do arquivo";
        echo "exemplo fupdate.sh $(pwd) meu_arquivo.txt";
        exit;
fi

if [ -z $fname ]; then
        echo "digite o nome do arquivo após o caminho";
        echo "exemplo fupdate.sh $(pwd) meu_arquivo.txt";
	exit;
fi

nano "$path/$fname" && \
echo "Atualizado com sucesso!"
