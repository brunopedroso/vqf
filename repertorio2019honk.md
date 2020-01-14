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


## Repertório Honk 2019


### Sexta (20min)
<pre>
  - Bebê
  - Bituca (AA-BB Lennon; AB Ângelus; AB-AB Bola de Meia; AB Paula e Bebeto)
  - Jazz (AB-AB Mulatu; AB-AB-AB-AB Haitian; AB-AB Take5; 4 solos no Jericó)
  - Cabelo de Fogo

</pre>

Minha idéia é fazer poucas repetições de cada música, pra dar tempo de fazer o cabelo de fogo no final tranquilo.

Notem que anotei as formas, e que **são menos repetições do que fizemos nos ensaios!**


### Sábado (1h)
<pre>
  - African
  - Latinas
  - Bebê
  - Bituca
  - Jazz
  = Gypsi (opcional)
  = Afoxés (opcional)
  = Maxixes (opcional)
  - Cabelo de Fogo
</pre>


### Domingo (30min)
<pre>
  - Maxixes
  - Bebê
  - Afoxés
  - Bituca
  - Jazz
  = Gypsi (opcional)
  - Cabelo de Fogo
</pre>

Aqui o que pensei foi: olhando pro repertório da sexta, com 20min, só temos mais 10min de música pra completar 30min. Então acho q não rola mais de dois blocos (Maxixes e Afoxés).

-------
-------
-------

### Repertório dos ensaios:

  <table>

    {% for bloco in site.data.repertorio_honk_2019.blocos  %}

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


