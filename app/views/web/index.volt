<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="author" content="Copyright (c) 2016 Marcin Gierczak (www.viewdesic.com)">
    <meta name="description" content="viewScroller plugin by Marcin Gierczak. This plugin allows creating fullscreen scrollable webpage." />
    <meta name="keywords" content="viewScroller, fullscreen, html fullpage, scroll page, page scrolling, page scroll, full scroll" />
    <title>viewScroller - Extra example</title>
    <link rel="stylesheet" type="text/css" href="../css/viewScroller.css">
    <style>
        /* Custom views styles */
        
        .view1 {
            background: #00baaa;
            background: -webkit-linear-gradient(#00baaa, #7af4e9);
            background: -o-linear-gradient(#00baaa, #7af4e9);
            background: -moz-linear-gradient(#00baaa, #7af4e9);
            background: linear-gradient(#00baaa, #7af4e9);
        }
        
        .view2 {
            background: #26bece;
            background: -webkit-linear-gradient(#7af4e9, #26bece);
            background: -o-linear-gradient(#7af4e9, #26bece);
            background: -moz-linear-gradient(#7af4e9, #26bece);
            background: linear-gradient(#7af4e9, #26bece);
        }
        
        .view3 {
            background: #26bece;
            background: -webkit-linear-gradient(#26bece, #1c93a0);
            background: -o-linear-gradient(#26bece, #1c93a0);
            background: -moz-linear-gradient(#26bece, #1c93a0);
            background: linear-gradient(#26bece, #1c93a0);
        }

        .view4 {
            background: #26bece;
            background: -webkit-linear-gradient(#26bece, #1c93a0);
            background: -o-linear-gradient(#26bece, #1c93a0);
            background: -moz-linear-gradient(#26bece, #1c93a0);
            background: linear-gradient(#26bece, #1c93a0);
        }
        /* Styles specific for this example */
        
        a {
            text-decoration: none;
            font-size: 13px;
            color: #000;
        }

        .menu {
            position: fixed;
            margin-top: 10px;
            left: 10px;
            width: 60%;
            font-family: Arial;
            font-size: 20px;
            z-index: 10;
        }
        
        .menu-up {
            position: fixed;
            top: 10px;
            margin-left: -16px;
            left: 50%;
            width: 32px;
            font-family: Arial;
            font-size: 20px;
            z-index: 10;
        }
        
        .menu-down {
            position: fixed;
            bottom: 10px;
            margin-left: -100px;
            left: 50%;
            width: 200px;
            font-family: Arial;
            font-size: 20px;
            z-index: 10;
            text-align: center;
        }
        
        .forkme {
            position: fixed;
            z-index: 30;
            top: 0;
            right: 0;
            border: 0;
        }
        
        .logo {
            position: fixed;
            z-index: 30;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -150px;
            max-width: 288px;
            max-height: 288px;
            background: rgba(255, 255, 255, .5);
            padding: 10px 10px;
            border-radius: 10px;
            -webkit-box-shadow: 10px 10px 63px -4px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 10px 10px 63px -4px rgba(0, 0, 0, 0.75);
            box-shadow: 10px 10px 63px -4px rgba(0, 0, 0, 0.75);
			-webkit-transition: box-shadow .5s ease;
			-moz-transition: box-shadow .5s ease;
			-o-transition: box-shadow .5s ease;
			transition: box-shadow .5s ease;
        }
		
		.logo:hover {
			-webkit-box-shadow: 5px 5px 30px -4px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 5px 5px 30px -4px rgba(0, 0, 0, 0.75);
            box-shadow: 5px 5px 30px -4px rgba(0, 0, 0, 0.75);
		}
		
		.logo:active {
			-webkit-box-shadow: 0 0 rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 0 0 rgba(0, 0, 0, 0.75);
            box-shadow: 0 0 rgba(0, 0, 0, 0.75);
		}
        
        .inscription {
            width: 80vw;
            min-width: 600px;
            max-width: 1300px;
        }
        
        .up:hover,
        .down:hover {
            -webkit-filter: opacity(.5);
			-moz-filter: opacity(.5);
			-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
            filter: opacity(.5);
        }
        
        input[type="button"] {
            -webkit-appearance: none;
            display: inline-block;
            padding: 5px 10px;
            font-size: 12px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px #000;
        }
        /* Extends predefined vs-center class */
        
        .vs-center {
            position: fixed;
            font-family: Arial, Tahoma;
            font-size: 50px;
            color: rgba(0, 0, 0, .6)
        }
        
        .vs-center-fixed {
            position: fixed;
            font-family: Arial, Tahoma;
            font-size: 50px;
            color: rgba(0, 0, 0, .6)
        }
    </style>
</head>

<body>  

    <div class="menu">
        <a href="#view-1" class="vs-anchor"><button>View 1</button></a>
        <a href="#view-2" class="vs-anchor"><button>View 2</button></a>
        <a href="#view-3" class="vs-anchor"><button>View 3</button></a>
        <a href="#view-4" class="vs-anchor"><button>View 4</button></a>
    </div>

    <div class="menu-down">
        <a class="vs-mainview-next"><img src="../images/down.png" class="down"></a><br>
    </div>

    <div class="mainbag">
        <div vs-anchor="view-1" class="mainview view1">
            <img src="../images/fast.png" class="inscription">
        </div>
        <div vs-anchor="view-2" class="mainview view2">
            <img src="../images/smooth.png" class="inscription">
        </div>
        <div vs-anchor="view-3" class="mainview view3">
            <img src="../images/simple.png" class="inscription">
        </div>
        <div vs-anchor="view-4" class="mainview view4">
            <img src="" class="inscription">
        </div>
    </div>

    <script src="../js/jquery-3.1.0.min.js"></script>
    <script src="../js/jquery.easing.min.js"></script>
    <script src="../js/jquery.mousewheel.min.js"></script>
    <script src="../js/viewScroller.js"></script>
    <!--<script src="../js/script.js"></script>-->
    <script>
        $(document).ready(function() {
            // Sets viewScroller
            $('.mainbag').viewScroller({
                animSpeedMainView: 2000,
                animEffectMainViewCss3: 'cubic-bezier(0.42, 0, 0.58, 1)',
                useScrollbar: false,
                changeWhenAnim: false,
                viewsHeight: [2000, 1000, 500, 2000]
            });
        });
    </script>
</body>

</html>