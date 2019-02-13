---
layout: default
title: Repertório

tons:
  - C
  - Bb
  - Eb

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


## Ensaios

<pre>
  FEVEREIRO/2019

    ter 5  - Ensaio de noite

    sab 9  - Ensaio e aniversário da Camila (perto da 206. Teremos cortejo no final)
    
    ter 12 - Ensaio de noite

    sex 15 - Tapera
    sab 16 - Casamento na ponta do Lago norte
    
    ter 19 - Ensaio de noite

    sab 23 - Ensaio e aniversário Cora
    dom 24 - CCBB (que horas?)

    ter 26 - Ensaio de noite

  MAR
    2 - !!! SÁBADO DE CARNAVAL !!!
    4 - !!! SEGUNDA DE CARNAVAL !!!
</pre>

## Repertório

  <a href='repertorio_lista'>Lista pra imprimir</a>


  <h4>Songbooks</h4>

  {% for tom in page.tons  %}
  <a href='partituras/songbooks/songbook{{ tom }}.pdf' target='_blank'>Songboog em {{ tom }}</a><br/>
  {% endfor %}

  <table>

    {% for bloco in site.data.repertorio2019.blocos  %}

      <tr>
        <td>
          <h4>{{bloco.nome}}</h4>
        </td>

      </tr>

      {% for musica in bloco.musicas  %}

        <tr>
          <td>
            {{musica.nome}}
          </td>

          {% if musica.inicio %}
            <td colspan='2' style='font-size: 0.8em; color:#999 '>
              {{ musica.autor }}
            </td>
            <td colspan='3' style='font-size: 0.8em; color:#999 '>
              {{ musica.inicio }}...
            </td>
          {% endif %}

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



