#!/bin/bash

basecapa="../../img/2020-capasongbook.png"
arqrep="../../_data/repertorio2020.yml"

#Captura e Geração de nomes dos blocos em pdf

#Captura
grep -e 'C.pdf' -e '^  - nome' $arqrep | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaC.txt 
grep nome listaC.txt | sed 's/.* "\(.*\)"/\1/g'|  sed 's/ \([[:alpha:]]\)/_\1/g' - > blocos.txt


#geração de colinhas - rascunho
#cat listaC.txt | convert -density 72 -background white label:@- -page A4 colinha.pdf

#geração dos pdfs
while read i 
do 
  convert -page a4 -density 150 -pointsize 40 caption:"\nBLOCO\n\n${i}" -gravity center -density 72 -extent 595x842 "$i".pdf
done < blocos.txt 

#livros a serem gerados
tons_livros=(C Bb Eb Eb_notas letra)

#rastreia músicas com partituras, coloca em lista na mesma ordem, gera o pdf de capa com demais elementos.
for t in ${tons_livros[@]}; do
        grep -e $t'.pdf' -e '^  - nome' $arqrep | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > lista$t'.txt'
	sed 's/partituras/../g' lista$t.txt | sed  's/.* "\(.*\)"/\1\.pdf/g' | sed 's/ \([[:alpha:]]\)/_\1/g' - > lista$t'comblocos.txt'

	convert  "$basecapa" -gravity south -splice 0x352  -pointsize 60 -font Calibri -annotate +0+124 "Vai Quem Fica - Carnaval $(date +%Y)\nv.$(date +%d-%m-%Y)" -gravity center -append -fill white -pointsize 160 -font Calibri -annotate -350-1170 "$t" capalivro.pdf
	pdftk capalivro.pdf $(cat lista${t}'comblocos.txt') cat output songbook$t'.pdf'
done


# Comando para gerar booklet de 4 páginas por folha (8 frente e verso)
pdftops songbookletra.pdf -| psbook | psnup -2 -PA4 |ps2pdf - basebook.pdf
pdftk basebook.pdf cat 1-endodd output -| pdftops - -  | psnup -2 -PA4 | ps2pdf - basei.pdf
pdftk basebook.pdf cat 1-endeven output -| pdftops - - | psnup -2 -PA4 | ps2pdf - basep.pdf
pdftk A=basei.pdf B=basep.pdf shuffle A B output songbookletrabooklet.pdf

#| ps2pdf -sPAPERSIZE=a4  - songbookletrabooklet.pdf

#criar estampa das capas com os tons


#Limpa arquivos provisórios gerados
shopt -s extglob
rm !(song*).pdf
rm *.txt
