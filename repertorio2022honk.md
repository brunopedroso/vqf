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
{% include base.html %}

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


## Repertório VQF Honk 2022

## Músicas

  <table>

    {% for bloco in site.data.repertorio_honk_2022.blocos  %}

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


