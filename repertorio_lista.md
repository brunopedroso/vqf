---
layout: branco
title: Repertório - Lista

---

<style type="text/css" media="screen">
  
  body {
    font-family: Georgia, "Times New Roman", Times, serif;
    color: black;
    background-color: white;
    overflow: auto;
  }

  .coluna {
    background-color: white;
    position: relative;
  }

  h1, .h1,
  h2, .h2,
  h3, .h3,
  h4, .h4,
  h5, .h5,
  h6, .h6 {
    color: black;
  }

  td {
    padding: 5px 10px;
  }

  h4 {
    font-size: 1.5em;
    font-weight: bold;
    margin-top:30px;
  }
</style>


## Repertório 2019

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
            {% if musica.inicio %}
              <span style='font-size: 0.8em; color:#999 '>
                {{ musica.autor }}
                <br/>
                {{ musica.inicio }}...
              </span>
            {% endif %}
          </td>


        </tr>

      {% endfor  %}

      <tr>
        <td>
          &nbsp;
        </td>
      </tr>

    {% endfor  %}


  </table>



