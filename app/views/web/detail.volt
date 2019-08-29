<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/viewScroller.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>  
    <div>
    <div class="mainbag">       
        <!-- View 1 -->
        <div vs-anchor="view-1" class="mainview view-detail" style='background-image: url(../images/FondoID.jpg)'>
            <div class="row menu">
                <a href="#view-1" class="vs-anchor">
                    <div class="col-md-2 main-block">
                        <img style="width: 110px; height: 110px;" src="../images/Icono01.png" alt="LOGO">
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-2')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>1. Sobre mi</label>
                        <label class='description'>Mira aqui una breve descripción sobre mi.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-3')}}">
                    <div class="col-md-3 main-block option">
                        <label class='title'>2. Estudios y experiencia</label>
                        <label class='description'>Conoce mi trayectoria academica y experiencia laboral.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-4')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>3. Portafolio</label>
                        <label class='description'>¡Basta de palabras! mira mis trabajos aqui.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-8')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>4. Contacto</label>
                        <label class='description'>Estoy listo para comenzar cuando decidas.</label>
                    </div>
                </a>
            </div>
            <section class='block-detail-1'>
                <label class='text1-detail-1'>Marca personal</label><br>
                <label class='text2-detail-1'>Idea Design</label><br><br>
                <div class='row' style='margin-top:5px;'>
                    <div class='col-md-1 block-detail-btn'>
                        <center><button type="button" class='btn detail-btn'>Diseño de marca</button></center>
                    </div>
                    <div class='col-md-1 block-detail-btn'>
                        <button type="button" class='btn detail-btn'>Identidad corporativa</button>
                    </div>
                </div>
                <label align="justify" class='text3-detail-1'>
                    Dicen que lo más dificil de diseñar es hacerlo para uno
                    mismo, si ese es el caso, mi identidad personal es uno de
                    los proyectos más desafiantes que he hecho, ya que como
                    cliente es complejo lograr una propuesta que alcance
                    todas mis expectativas.
                </label><br>
            </section>
            <div class="menu-down-detail-1 row">
                <div class='col-md-1 col-md-offset-6'>
                    <a class="vs-mainview-next"><img src="../images/Icono10.png" class="down"></a>
                </div>
                <div class='col-md-1 col-md-offset-3'>
                    <a class="pull-right" href='https://wa.me/573183922306' target="_blank"><img style="width:50px; height:50px;" src="../images/WhatsappIcon.png" alt=""></a>
                </div>
            </div>
        </div>


        <!-- View 2 -->
        <div vs-anchor="view-2" class="mainview view-detail" style='background-color: rgb(19, 16, 16)'>
            <div class="row menu">
                <a href="#view-1" class="vs-anchor">
                    <div class="col-md-2 main-block">
                        <img style="width: 110px; height: 110px;" src="../images/Icono01.png" alt="LOGO">
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-2')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>1. Sobre mi</label>
                        <label class='description'>Mira aqui una breve descripción sobre mi.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-3')}}">
                    <div class="col-md-3 main-block option">
                        <label class='title'>2. Estudios y experiencia</label>
                        <label class='description'>Conoce mi trayectoria academica y experiencia laboral.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-4')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>3. Portafolio</label>
                        <label class='description'>¡Basta de palabras! mira mis trabajos aqui.</label>
                    </div>
                </a>
                <a target="_blank" href="{{url('web/index#view-8')}}">
                    <div class="col-md-2 main-block option">
                        <label class='title'>4. Contacto</label>
                        <label class='description'>Estoy listo para comenzar cuando decidas.</label>
                    </div>
                </a>
            </div>
            <section class='block-detail-2-new'>
                <label class='text-detail2'>Marca no es igual a la identidad: la identidad es el resultado de una marca eficaz - Erick Straghalis</label><br>
            </section>
            <section>
                <div id="myCarousel" class="carousel slide carousel-detail" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active carousel-list"></li>
                        <li data-target="#myCarousel" data-slide-to="1" class="carousel-list"></li>
                        <li data-target="#myCarousel" data-slide-to="2" class="carousel-list"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <center><img class='carousel-img' src="../images/Fondo08.jpg"></center>
                        </div>
                        <div class="item">
                            <center><img class='carousel-img' src="../images/Fondo08.jpg"></center>
                        </div>
                        <div class="item">
                            <center><img class='carousel-img' src="../images/Fondo08.jpg"></center>
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" style="padding-top: 13%;" data-slide="prev">
                        <img src="../images/Flecha-1.png">
                    </a>
                    <a class="right carousel-control" href="#myCarousel" style="padding-top: 13%;" data-slide="next">
                        <img src="../images/Flecha-2.png">
                    </a>
                </div>
            </section>
            <section class="horizontal-line"></section>
            
        </div>

        <!-- View 3 -->
        <div vs-anchor="view-3" class="mainview" style="background-color: rgb(19, 16, 16);">
            <section class='block-detail-3-new'>
              
                <label class='text-detail3'>¿Te gusta este proyecto?</label><br>

                <img class="star" src="../images/Estrella01.png">
                <img class="star" src="../images/Estrella01.png">
                <img class="star" src="../images/Estrella01.png">
                <img class="star" src="../images/Estrella01.png">
                <img class="star" src="../images/Estrella02.png">

                <div class="qualification">
                    <label class='text-detail4'>Conoce más sobre este y otros proyectos visitando mi perfil en Behance</label><br>
                    <img class="img-behance" class="star" src="../images/BehanceIcon.png"><br>
                    <label class='text-detail4'>o contáctame y comencemos a trabajar</label><br>
                </div>   

                <div class="block-btn">
                    <div class="block-view-more row">
                        <div class='col-md-1' style="width:85%">
                            <button type="button" class='btn btn-clic-here'>Clic aquí</button>
                        </div>
                        <div class='col-md-1' style="width:5%">
                            <a href='https://wa.me/573183922306' target="_blank"><img style="width:45px; height:45px;" src="../images/WhatsappIcon.png" alt=""></a>
                        </div>
                    </div>
                </div>
           
                <div class='footer' style="margin-top:0%!important">
                    <div class='row footer-contact'>
                        <center class="col-md-9 section-contact-1">
                                <div class="col-md-3">
                                    <img style="width:30px; height:30px;" src="../images/TelFooter.png" alt="LOGO"><br>
                                    <label class='description-footer'>(+57)318 392 2306</label>
                                </div>
                                <div class="col-md-3">
                                    <img style="width:30px; height:30px;" src="../images/CorreoFooter.png" alt="LOGO"><br>
                                    <label class='description-footer'>idmr13@gmail.com</label>
                                </div>
                                <div class="col-md-3">
                                    <img style="width:30px; height:30px;" src="../images/BehanceFooter.png" alt="LOGO"><br>
                                    <label class='description-footer'>/iDeaDavid</label>
                                </div>
                                <div class="col-md-3">
                                    <img style="width:30px; height:30px;" src="../images/PinterestFooter.png" alt="LOGO"><br>
                                    <label class='description-footer'>/david_mr18</label>
                                </div>       
                        </center>
                        <div class="col-md-3 section-contact-2">
                            <div class="col-md-2">
                                <a href="#view-1"><img src="../images/ScrollUpFooter.png" style="width: 45px; height: 45px;"></a>
                            </div>
                            <div class="col-md-1" style='padding-left: 12%;'>
                                <a href='https://wa.me/573183922306' target="_blank"><img style="width:50px; height:50px;" src="../images/WhatsappIcon.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <center><hr class="hr2"></center>
                    <div class='row' style='padding-left:30%; padding-right:1%'>
                        <div class="col-md-1 col-md-offset-1" style='width:5%;'>
                            <img style="width:30px; height:30px;" src="../images/LogoIDFooter.png" alt="LOGO"><br>
                        </div>
                        <div class="col-md-1" style='width:45%'>
                            <center><label class='description-footer'>Diseñado por iDea Design, desarrollado por Viviana Arango, derechos reservados.</label></center>
                        </div>
                    </div>
                </div>
            <section>
        </div>
    </div>
</body>

</html>

<script src="../js/jquery-3.1.0.min.js"></script>
<script src="../js/jquery.easing.min.js"></script>
<script src="../js/jquery.mousewheel.min.js"></script>
<script src="../js/viewScroller.js"></script>

<script>
    $(document).ready(function() {
        
        let height = window.innerHeight;
        // Sets viewScroller
        $('.mainbag').viewScroller({
            animSpeedMainView: 700,
            animEffectMainViewCss3: 'cubic-bezier(0.42, 0, 0.58, 1)',
            useScrollbar: false,
            changeWhenAnim: false,
            viewsHeight: [height, height, height]
        });
    });
</script>