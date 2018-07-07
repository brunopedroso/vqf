---
layout: default
title: Repertório de estudo de cada mês

blocos:

  - nome: "Abril"
    musicas:

      - nome: 'Watermelon man (F)'
        links:
          'yt':  'https://www.youtube.com/watch?v=ZbHJHPTikQA&feature=youtu.be'

      - nome: 'Pra tirar côco (Am)'
        links:
          'yt': 'https://www.youtube.com/watch?v=0caahoVisao&feature=youtu.be'
          
  - nome: "Maio"
    musicas:

      - nome: 'Cartaz (F)'
        links:
          'yt':  'https://www.youtube.com/watch?v=Ic2Z7-unNeY'

      - nome: 'Pedras que cantam (Eb)'
        links:
          'gravação': 'http://brunopedroso.github.io/vqf/sound/pedras_que_cantam.mpeg'

  - nome: "para 9/jun"
    musicas:

      - nome: 'A volta do Malandro (Bb)'
        links:
          'yt':  'https://www.youtube.com/watch?v=FE3-WIyFXhY'

      - nome: 'Um canto de afoxé para o bloco do Ilê (Bb)'
        links:
          'yt (E)':  'https://www.youtube.com/watch?v=9eXbh-6xxUQ'
          'midi':  'partituras/canto_de_afoxeh/canto_de_afoxeh.midi' 
          'C':  'partituras/canto_de_afoxeh/canto_de_afoxeh_C.pdf'

  - nome: "para 30/jun"
    musicas:

      - nome: 'Bola de meia bola de gude (D)'
        links:
          'yt':  'https://www.youtube.com/watch?v=G9RS2BkbqHw'
          'midi':  'partituras/bola_de_meia/bola_de_meia.midi' 
          'C':  'partituras/bola_de_meia/bola_de_meia_C.pdf'          
          'Bb':  'partituras/bola_de_meia/bola_de_meia_Bb.pdf'          
          'Eb':  'partituras/bola_de_meia/bola_de_meia_Eb.pdf'                    

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


## Repertório de estudos mês a mês (2018-19)

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

  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
