<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>La Independencia</title>
    <link href="https://fonts.googleapis.com/css?family=Shadows+Into+Light" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="icon" type="image/x-icon" href="images/PAC64.ico"/>
    <script type="text/javascript">
      $(window).on('scroll', function(){
        if($(window).scrollTop()){
          $('nav').addClass('maxOpacity');
        } else {
          $('nav').removeClass('maxOpacity');
        }
      })
    </script>
  </head>
  <body>
    <nav class="navbar">
      <a class="logo">La Independencia</a>
      <ul>
        <li><a href="#kontakt">Kontakt</a></li>
        <li><a href="#ueber">Über uns</a></li>
        <li><a href="#infos">Infos</a></li>
        <li><a href="#projekt">Projekt</a></li>
      </ul>
    </nav>
    <div class="content">
      <p id="projekt">
        <br /><br />
      </p>
      <h1>Projekt</h1>
      <p>
        Test Text hier!
      </p>
      <p id="infos">
        <br /><br />
      </p>
      <h1>Infos</h1>
      <p>
        Test Text hier!
      </p>
      <p id="ueber">
        <br /><br />
      </p>
      <h1>Über uns</h1>
      <p>
        Test Text hier!
      </p>
      <p id="kontakt">
        <br /><br />
      </p>
      <h1>Kontakt</h1>
      <p>
        <a class="issues" href="https://github.com/DarioXDF/polygon-game-studio/issues">Zu den Issues</a><br />
      </p>
    </div>
  </body>
</html>