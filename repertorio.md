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
  - Afoxés
  - Bebê
  - Bituca
  - Jazz
  = Latinas
  = Maxixes
  - Cabelo de Fogo

  x Gypsi
  x Comportamento

</pre>

Nos dois ensaios gerais que fizemos, esse reperório durou 2h. Pensei em retirar os dois blocos que acho que estão menos legais e fazermos menos repetição dos demais. (Marquei com **X** os que eu tiraria.)

A gente também pode avaliar o tempo no meio do caminho e, se ver que não vai dar tempo, deixa de fazer o Latinas ou o Maxixes (por isso botei elas mais pra frente. Estão marcadas com **=**)


### Domingo (30min)
<pre>
  = Maxixes
  - Bebê

  = Latinas ou Afoxés

  - Bituca
  - Jazz
  - Cabelo de Fogo
</pre>

Aqui o que pensei foi: olhando pro repertório da sexta, com 20min, só temos mais 10min de música pra completar 30min. Então acho q não rola mais de dois blocos.

Acho q o Maxixes é ótimo pra começar, pq tem aquela levadinha do começo que é boa pra reunir a tropa.

Isso nos deixaria a dura escolha entre Latinas e Afoxés pra completar. (Acho que eu fico com os Afoxés)

Opções:
* Acho q o Afoxés também pode servir de começo.
* Podemos tirar o Bebê ou o Bituca pra por as Latinas. (Mas não sinto que vale a pena)

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


