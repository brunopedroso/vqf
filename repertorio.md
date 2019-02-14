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


## Ensaios

<pre>
  FEVEREIRO

    sex 15 - Tapera
    sab 16 - Casamento na ponta do Lago norte
    
    ter 19 - Ensaio de noite

    sab 23 - Ensaio e aniversário Cora
    dom 24 - CCBB (que horas?)

    ter 26 - Ensaio de noite

  MARÇO

    2 - !!! SÁBADO DE CARNAVAL !!!

    4 - !!! SEGUNDA DE CARNAVAL !!!

</pre>


####  Vídeos Tamborins Ensaio 10/02

[Treino Marchinha (1)](https://youtu.be/q1Ac5wB05eY)

[Treino Marchinha (2)](https://youtu.be/qX5AbzGiJSc)

[Afoxé A Rã (Bloco dos Afoxés)](https://youtu.be/FqPNEDHpnWc)

[Treino várias batidas](https://youtu.be/YC3c9CTcyLk)

[Treino de munheca](https://youtu.be/ncaB95APCnE)



#### Songboogs

  {% for tom in page.tons  %}
  <a href='partituras/songbooks/songbook{{ tom }}.pdf' target='_blank'>Songboog em {{ tom }}</a><br/>
  {% endfor %}


#### Listas Para Impressão

  <a href='repertorio_lista'>Repertório Carnaval</a>
  
  <a href='repertorio_casorio'>Lista do Casório</a>


#### Playlist do Repertório

<iframe style="width: 100%; height: 90px;" scrolling="no" src="https://midia.borges.net.br:9093/share.php?id=2&amp;secret=vqf2019carnaval&amp;embed=true"></iframe>


## Repertório Completo

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


