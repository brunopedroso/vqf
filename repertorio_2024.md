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


## Repertório VQF Carnaval 2024

**ENSAIOS: **

Sábado de 15:00 às 19:00.

Quartas de 19:00 às 22:00

Lugar definido na hora (grupo de transmissão do zap).


**[Cronograma de ensaios detalhado](https://www.notion.so/VQF-2024-7a4da96019db4a60b1739d0a8b9703e3?pvs=4)**

[Sambas pra tocarmos nos intervalos](https://proximal-bench-36b.notion.site/Sambas-VQF-7266d6052fdc4f6581aa41439a997d66)

## Músicas

  <table>

    {% for bloco in site.data.repertorio2024.blocos  %}

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


