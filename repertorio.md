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

<br/><br/>

  <div>
    <h3>Ensaios até o HONK</h3>
    <h4>Sábados 15h às 18h</h4>
    13/8<br/>
    20/8<br/>
    27/8 (ensaio será possívelmente o grito do Honk)<br/>
    <br/>
    <h4>Quartas 19h às 22h</h4>
    10/8<br/>
    17/8<br/>
    24/8<br/>
    31/8<br/>
  </div>

<br/><br/><br/>
  
## Músicas

#### (Ainda aberto a sugestões. Ainda sem ordem definida.)


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


