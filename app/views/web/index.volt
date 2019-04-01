<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Portafolio Web</title>
    <link rel="stylesheet" type="text/css" href="../css/viewScroller.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>  
    <div>
    <div class="row menu" style=''>
        <a href="#view" class="vs-anchor">
            <div class="col-md-2 main-block">
                <img style="width:90px;height:90px;" src="https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300" alt="LOGO">
            </div>
        </a>
        <a href="#view-2" class="vs-anchor">
            <div class="col-md-2 main-block option">
                <label class='title'>1. Sobre mi</label>
                <label class='description'>Mira aqui una breve descripción sobre mi.</label>
            </div>
        </a>
        <a href="#view-2" class="vs-anchor">
            <div class="col-md-3 main-block option">
                <label class='title'>2. Estudios y experiencia</label>
                <label class='description'>Conoce mi trayectoria academica y experiencia laboral.</label>
            </div>
        </a>
        <a href="#view-3" class="vs-anchor">
            <div class="col-md-2 main-block option">
                <label class='title'>3. Portafolio</label>
                <label class='description'>¡Basta de palabras! mira mis trabajos aqui.</label>
            </div>
        </a>
        <a href="#view-4" class="vs-anchor">
            <div class="col-md-2 main-block option">
                <label class='title'>4. Contacto</label>
                <label class='description'>Estoy listo para comenzar cuando decidas.</label>
            </div>
        </a>
    </div>
    </div>
    <!--<div class="menu-down">
        <a class="vs-mainview-next"><img src="../images/down.png" class="down"></a><br>
    </div>-->

    <div class="mainbag">
        <!-- View 1 -->
        <div vs-anchor="view-1" class="mainview view1">
            <center>
                <label class='text1-view-1'>¡HOLA!</label><br>
                <label class='text2-view-1'>Soy</label>
                <label class='text3-view-1'>David Montealegre Rey</label><br>
                <label class='text4-view-1'>Diseñador grafico con experiencia</label><br>
                <label class='text4-view-1'>en diseño UI-UX</label>
            </center>
            <center>
                <div class="row contact">
                    <div class="col-md-3">
                        <img style="width:30px;height:30px;" src="https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300" alt="LOGO"><br>
                        <label class='description'>(+57)318 392 2306</label>
                    </div>
                    <div class="col-md-3">
                        <img style="width:30px;height:30px;" src="https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300" alt="LOGO"><br>
                        <label class='description'>idmr13@gmail.com</label>
                    </div>
                    <div class="col-md-3">
                        <img style="width:30px;height:30px;" src="https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300" alt="LOGO"><br>
                        <label class='description'>/iDeaDavid</label>
                    </div>
                    <div class="col-md-3">
                        <img style="width:30px;height:30px;" src="https://techcrunch.com/wp-content/uploads/2018/07/logo-2.png?w=300" alt="LOGO"><br>
                        <label class='description'>/david_mr18</label>
                    </div>
                </div>
            </center>
            
            <div class="row contact1">
                <div class="col-md-7">
                    <button type="button" class='btn btn-contact'>Contáctame</button>
                </div>
                <div class="col-md-1">
                    <center><label style='padding-top: 25%;' class='description'>o</label></center>
                </div>
                <div class="col-md-1 contact-div-1">
                    <button type="button" class='btn btn-success btn-whatsapp'><img style="width:40px; height:40px;" src="https://4.bp.blogspot.com/-0nttwlRTRjY/WbmIrMnMolI/AAAAAAAAAMY/B0sgxzDK7NI_oYCBUJBLKv2f4pY3UYXbgCLcBGAs/s1600/trans.png" alt=""></button> 
                </div>
                <div class="col-md-2 contact-div">
                    <label class='txt-whatsapp'>Inicia una</label><br>
                    <label class='txt-whatsapp'>conversación</label>
                </div> 
            </div>
            <div class="menu-down-view-1">
                <a class="vs-mainview-next" onclick='validateMain()'><img src="../images/down.png" class="down"></a><br>
            </div>
        </div>

        <!-- View 2 -->
        <div vs-anchor="view-2" class="mainview view2">

        </div>

         <!-- View 3 -->
        <div vs-anchor="view-3" class="mainview view3">
            <img src="../images/simple.png" class="inscription">
        </div>

         <!-- View 4 -->
        <div vs-anchor="view-4" class="mainview view4">
            <img src="" class="inscription">
        </div>
    </div>
</body>

</html>

<script src="../js/jquery-3.1.0.min.js"></script>
<script src="../js/jquery.easing.min.js"></script>
<script src="../js/jquery.mousewheel.min.js"></script>
<script src="../js/viewScroller.js"></script>

<script>
    function validateMain(){
        alert('test');
    }

    $(document).ready(function() {
        // Sets viewScroller
        $('.mainbag').viewScroller({
            animSpeedMainView: 2000,
            animEffectMainViewCss3: 'cubic-bezier(0.42, 0, 0.58, 1)',
            useScrollbar: false,
            changeWhenAnim: false,
            viewsHeight: [1000, 1000, 500, 2000]
        });
    });
</script>