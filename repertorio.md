---
layout: default
title: Repertório

tons:
  - C
  - Bb
  - Eb
  - Eb_notas
  - letra
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

#### Songbooks preliminares

  {% for tom in page.tons  %}
  <a href='partituras/songbooks/songbook{{ tom }}.pdf' target='_blank'>Songbook em {{ tom }}</a><br/>
  {% endfor %}


#### Playlist do Repertório

<iframe style="width: 100%; height: 90px;" scrolling="no" src="https://midia.borges.net.br:9093/share.php?id=2&amp;secret=vqfcarnaval2020&amp;embed=true"></iframe>

## Repertório VQF 2020

  <a href='/repertorio_lista'>Lista simples</a>

  <table>

    {% for bloco in site.data.repertorio2020.blocos  %}

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


