#!/bin/bash

grep -e 'C.pdf' -e '^  - nome' ../../repertorio.md | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaC.txt 
grep nome listaC.txt | sed 's/.* "\(.*\)"/\1/g'|  sed 's/ \([[:alpha:]]\)/_\1/g' - > blocos.txt
while read i 
do 
  convert -density 150 -size 595x842 -pointsize 50 caption:"\n\n   BLOCO\n\n   ${i}" -page A4 "$i".pdf
done < blocos.txt 

sed 's/partituras/../g' listaC.txt | sed  's/.* "\(.*\)"/\1\.pdf/g' | sed 's/ \([[:alpha:]]\)/_\1/g' - > listaCcomblocos.txt
pdftk capa.pdf $(cat listaCcomblocos.txt) cat output songbookC.pdf



grep -e 'Bb.pdf' -e '^  - nome' ../../repertorio.md | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaBb.txt 
sed 's/partituras/../g' listaBb.txt | sed  's/.* "\(.*\)"/\1\.pdf/g'| sed 's/ \([[:alpha:]]\)/_\1/g' - > listaBbcomblocos.txt
pdftk capa.pdf $(cat listaBbcomblocos.txt) cat output songbookBb.pdf



grep -e 'Eb.pdf' -e '^  - nome' ../../repertorio.md | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaEb.txt 
sed 's/partituras/../g' listaEb.txt | sed  's/.* "\(.*\)"/\1\.pdf/g'| sed 's/ \([[:alpha:]]\)/_\1/g' - > listaEbcomblocos.txt
pdftk capa.pdf $(cat listaEbcomblocos.txt) cat output songbookEb.pdf

grep -e 'Eb_notas.pdf' -e '^  - nome' ../../repertorio.md | sed "s/.*: \+\\x27\(.*\)\x27/\1/g" - > listaEbnotas.txt 
sed 's/partituras/../g' listaEbnotas.txt | sed  's/.* "\(.*\)"/\1\.pdf/g'| sed 's/ \([[:alpha:]]\)/_\1/g' - > listaEbnotascomblocos.txt
pdftk capa.pdf $(cat listaEbnotascomblocos.txt) cat output songbookEbnotas.pdf






# Falta criar arquivos com nomes dos blocos a partir dos nomes, e incluir na lista de arquivos


#for i in ; do
# convert -density 150 -size 595x842 -pointsize 50 caption:"\n\n   BLOCOX" -page A4 $.pdf
#rascunho da criação da capa
#convert desenhocapa.png -density 150 -pointsize 30 caption:"\n\n                           Songbook\n                2019\n                          v. 02-02-2019" -append  -page A4 capa.pdf
