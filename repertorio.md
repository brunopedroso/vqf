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
          'gravação': 'http://brunopedroso.github.io/sound/pedras_que_cantam.mpeg'

  - nome: "para 9/jun"
    musicas:

      - nome: 'A volta do Malandro (Bb)'
        links:
          'yt':  'https://www.youtube.com/watch?v=FE3-WIyFXhY'

      - nome: 'Um canto de afoxé para o bloco do Ilê (Bb)'
        links:
          'yt (E)':  'https://www.youtube.com/watch?v=9eXbh-6xxUQ'

  - nome: "para 30/jun"
    musicas:

      - nome: 'Bola de meia bola de guda (D)'
        links:
          'yt':  'https://www.youtube.com/watch?v=G9RS2BkbqHw'

          

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
