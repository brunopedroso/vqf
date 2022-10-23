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


## Repertório VQF Carnaval 2023 (10 anos)

**ENSAIOS: Todo sábado de 15:00 às 19:00.** Lugar definido na hora (grupo de transmissão do zap).

Estou tentando manter um pequeno **plano pros próximo ensaios**, e um registro do que a gente tem ensaiado **[AQUI](https://www.notion.so/VQF-Ensaios-pra-2023-1e41b893c9ff4b299679c221ff465705)**

E aqui está a listagem de [todos nossos repertórios antigos](todos_repertorios).

As músicas abaixos são apenas um retrato do que temos/pretendemos hoje. Ainda está bastante aberto a mudanças:

## Músicas

  <table>

    {% for bloco in site.data.repertorio2023.blocos  %}

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


