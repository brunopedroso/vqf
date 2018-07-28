---
layout: default
title: Repertório

blocos:

  - nome: "Pra tirar coco"
    musicas:


      - nome: 'Taí (Gm)'
        links:
          'gravacao': 'https://s3.amazonaws.com/brunopedroso/vqf/b1/4_Tai.mp3'
          'c':  'partituras/taih/taih_C.pdf'
          'bb': 'partituras/taih/taih_Bb.pdf'
          'eb': 'partituras/taih/taih_Eb.pdf'
          'ebnotas': 'partituras/taih/taih_Eb_notas.pdf'

---



<style type="text/css" media="screen">
  td {
    padding: 5px 10px;
  }

  h4 {
    font-size: 1.5em;
    font-weight: bold;
    margin-top:30px;
  }
</style>



## Agenda de ensaios

  [CLIQUE AQUI](/VQF_2018_ensaios.pdf)

## Repertório Honk 2018

  <table>

    {% for bloco in page.blocos  %}

      <tr>
        <td>
          <h4>{{bloco.nome}}</h4>
        </td>

<!--         {% if bloco.musicas  %}
          <td colspan='3'>
            Partituras
          </td>
        {% endif %}
 -->
      </tr>

      {% for musica in bloco.musicas  %}

        <tr>
          <td>
            {{musica.nome}}
          </td>

          {% for link in musica.links %}
            <td>
              <a href="{{ link[1] }}" target="_blank">{{ link[0] }}</a>
            </td>
          {% endfor %}

        </tr>

      {% endfor  %}

      <tr>
        <td>
          &nbsp;
        </td>
      </tr>

    {% endfor  %}


  </table>
