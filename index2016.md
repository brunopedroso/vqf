---
layout: branco
title: Brasília e o carnaval mais bonito do mundo
---

<style type="text/css" media="screen">

  h1 {
    padding: 100px 0 20px 0;
    font-size:4em;
  }
  
  p {
    line-height:1.7em;
    font-size:1.6em;
  }
  
  .img_r {
    float:right;
    margin-left:20px; 
    width:60%;
  }
  
  .img_l {
    float:left;
    margin-right:20px; 
    width:60%;
  }
  
  .caixa {
    width:100%;
    font-size:1.5em;
    margin:20px 0 60px 0;
    float: left;
    line-height: 2em;
  }
  
  .fundo {
    /* setado pelo JS: background-image: url(/img/fotos_2015/10397981_971882149502797_169845247255961071_n.jpg); */
    background: url(images/bg.jpg) no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;

    position: fixed;
    top:0;
    left:0;
    
    width: 100%;
    height: 100%;
    
  }
  
  body {
    background-color: black;
    
    display:table;
    width:100%;
  }
  
  
  body, h1, h2, h3, h4 {
    font-family: 'Asap', sans-serif;
    color: white;
  }
    
  .coluna {
    background-color:rgba(1,1,1,0.5);
    padding: 0 50px;
    position: absolute;
  }
  
  @media (min-width: 768px) {
    .coluna {
      right: 40px;
    }
  }
  
  .container {
    background-color: rgba(0,0,0,0);
  }
  
  #mc_embed_signup {
    color: black;
  }
  
</style>


<script type="text/javascript" charset="utf-8">
  
  window.imagens = [
    './img/fotos_2015/foto1.jpg',
    './img/fotos_2015/foto2.jpg',
    './img/fotos_2015/foto3.jpg',
    './img/fotos_2015/foto4.jpg',
    './img/fotos_2015/foto5.jpg',
    './img/fotos_2015/foto6.jpg',
    './img/fotos_2015/foto7.jpg',
    './img/fotos_2015/foto8.jpg',
    './img/fotos_2015/foto9.jpg',
  ];
  
  
  function usaImagem(i) {
    if(window.imagem_usada != i) {
      window.imagem_usada = i;
      var div_usado  =  i    % 2;
      var div_a_usar = (i+1) % 2
      
      $('.fundo'+div_usado).animate({'opacity': 0}, 2000);
      $('.fundo'+div_a_usar).css('background-image', "url(" + window.imagens[i] + ")");
      $('.fundo'+div_a_usar).animate({'opacity': 1}, 2000);

    }
  }
  
  $(function(){
    
    $('body').prepend("<div class='fundo fundo0' />")
    $('body').prepend("<div class='fundo fundo1'/>")
    
    $('#fundo').css({height: $(window).height()});
    
    usaImagem(0);
    
    $(window).scroll(function(e) {
        var index = Math.floor(document.body.scrollTop / 280);
        if(index > 8)
          index = 8;
        usaImagem(index);
    });
    
  })
  
</script>

# Brasília e o carnaval<br/> mais bonito do mundo

<div class="caixa">

  Nós não vamos comprar pronto <br/>
  e nem vamos buscar fora. <br/>
  Vamos é fazer o nosso <br/>
  lá no fundo quintal. <br/>
  
</div>

<div class="caixa">

  Quatro anos já nos pesam <br/>
   Não nos ombros, mas no peito <br/>
   Sairemos novamente <br/>
   miudinho e com respeito. <br/>

 </div>

 <div class="caixa">

   Brincadeira com os amigos <br/>
   com os velhos e as crianças <br/>
   brincaremos com carinho <br/>
   pois é séria a nossa herança <br/>

 </div>

 <div class="caixa">

   Nosso bloco é pequenino <br/>
   e não queremos crescer. <br/>
   Nós cantamos bem baixinho <br/>
   logo ao amanhecer <br/>

 </div>

 <div class="caixa">

   Brincamos muito tranquilos, um pouco desavergonhados, <br/>
   Ocupamos os espaços que a cidade tem pra dar. <br/>
   Fazemos alguma algazarra, porém sempre muito educados - <br/>
   as latinhas que tomamos, nós mesmos que vamos catar. <br/>

 </div>

 <div class="caixa">

   Cantaremos bem bonito, <br/>
   tocaremos devagar, <br/>
   seu Cartola, dona Chiquinha <br/>
   e um choro do Pixinguinha <br/>

 </div>

 <div class="caixa">

   Temos marcha, marchinha e samba <br/>
   Sem pressa, com sentimento <br/>
   Senão a gente esculhamba <br/>
   Com nosso divertimento <br/>

 </div>

 <div class="caixa">

   O bloco sai é no sábado <br/>
   Segunda, tem repeteco <br/>
   Sempre às nove da matina <br/>
   Armamos nosso boteco <br/>

 </div>

 <div class="caixa">

   O lugar, a ha ha, não te digo! <br/>
   Brincadeira. Vou dizer sim. <br/>
   Decidimos com os amigos <br/>
   Na véspera, no botequim. <br/>

 </div>

 <div class="caixa">

   Saberás de tudo certinho <br/>
   quando o momento chegar <br/>
   Se quiseres saber é facinho <br/>
   basta o imêio deixar <br/>
  
</div>


<br>

<div style='width:70%; margin:20px 0 40px 0; float: left;'>

  <!-- Begin MailChimp Signup Form -->
  <link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
  <style type="text/css">
  	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
  	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
  	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
  </style>
  <div id="mc_embed_signup" style='background:#ddd; border-radius:3px; padding:10px 20px'>
    
    <form action="//Notyet.us2.list-manage.com/subscribe/post?u=1add2b0d2d8fac83d25d4a1fe&amp;id=846f269f95" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
        <div id="mc_embed_signup_scroll">

          <div class="mc-field-group">
          	<label for="mce-FNAME">Primeiro Nome </label>
          	<input type="text" value="" name="FNAME" class="" id="mce-FNAME">
          </div>

          <div class="mc-field-group">
          	<label for="mce-EMAIL">Email  <span class="asterisk">*</span>
            </label>
          	<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
          </div>
        	<div id="mce-responses" class="clear">
        		<div class="response" id="mce-error-response" style="display:none"></div>
        		<div class="response" id="mce-success-response" style="display:none"></div>
        	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
          <div style="position: absolute; left: -5000px;"><input type="text" name="b_1add2b0d2d8fac83d25d4a1fe_5a781cb5f1" tabindex="-1" value=""></div>
          <div class="clear"><input type="submit" value="Me inscrever!" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
          
        </div>
    </form>
  </div>

  <!--End mc_embed_signup-->

  <br/>

</div>


<br/>

<div class="caixa">
  <div style='margin:0 auto; width:400px; font-size:0.8em'>
    Que tal &nbsp;
    <!-- box_count -->
    <div class="fb-share-button" data-href="http://brunopedroso.github.io/vqf/index2016" data-layout="button"></div>
    &nbsp; isso com seus amigos?
  </div>
</div>