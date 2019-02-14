#!/bin/bash

#rascunho da criação da capa
convert ../../img/fotos_2015/foto7.jpg -gravity Center -density 72 -pointsize 30 caption:"Vai Quem Fica\nSongbook Carnaval    $(date +%Y)\nv. $(date +%d-%m-%Y)\n\n" -append  -background white -size 595x842 -page a4 capa.pdf

arqrep="../../_data/repertorio2019.yml"

#Captura e Geração de nomes dos blocos em pdf

#Captura
grep -e 'C.pdf' -e '^  - nome' $arqrep | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaC.txt 
grep nome listaC.txt | sed 's/.* "\(.*\)"/\1/g'|  sed 's/ \([[:alpha:]]\)/_\1/g' - > blocos.txt

#geração dos pdfs
while read i 
do 
  convert -page a4 -density 150 -pointsize 50 caption:"\nBLOCO\n\n${i}" -gravity Center -density 72 -size 595x842 "$i".pdf
done < blocos.txt 

#livros a serem gerados
tons_livros=(C Bb Eb Eb_notas letra)

#rastreia músicas com partituras, coloca em lista na mesma ordem, gera o pdf de capa com demais elementos.
for t in ${tons_livros[@]}; do
        grep -e $t'.pdf' -e '^  - nome' $arqrep | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > lista$t'.txt'
	sed 's/partituras/../g' lista$t.txt | sed  's/.* "\(.*\)"/\1\.pdf/g' | sed 's/ \([[:alpha:]]\)/_\1/g' - > lista$t'comblocos.txt'
	pdftk capa.pdf $(cat lista${t}'comblocos.txt') cat output songbook$t'.pdf'
done


#Limpa arquivos provisórios gerados
shopt -s extglob
rm !(song*).pdf
rm *.txt

# Comando para gerar booklet de 4 páginas por folha (8 frente e verso)
pdftops songbookletra.pdf -| psbook -s24 | psnup -4 -PA4 | ps2pdf -sPAPERSIZE=a4  - songbookletrabooklet.pdf


