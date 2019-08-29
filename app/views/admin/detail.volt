<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link href="../css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
</head>

<body class="">

    <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="white" >
            <div class="logo">
                <center><a href={{url('web/index')}} target='_blank'><img border="0" src="../images/Log02.png" width="250" height="100"></a></center>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="{{url('admin')}}">
                            <i class="material-icons">view_carousel</i>
                            <p>Proyectos</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('experience')}}">
                            <i class="material-icons">work</i>
                            <p>Experiencia y estudios</p>
                        </a>
                    </li>
                    {{ form('index/logout', 'role': 'form') }}
                        <li class="nav-item active-pro" >
                            <a class="nav-link" href="{{url('index/logout')}}">
                                <i class="material-icons">power_settings_new</i>
                                <p>Cerrar sesión</p>
                            </a>
                        </li>
                    {{ end_form() }} 
                </ul>
            </div>
        </div>

        <div class="main-panel">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-info">
                                    <h4 class="card-title">Proyecto {{ project.text2 }}</h4>
                                </div>
                                <div class="card-body">
                                {{ form("admin/detail", "method":"post", 'enctype': 'multipart/form-data') }}
                                    <input type='hidden' name='id_project' id='id_project' value={{ project.id_project }}>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="bmd-label-floating"><b>Descripción:</b></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" id='description' name='description' class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Derechos</b></label>
                                                <input type="text" id='rights' name='rights' class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Calificación</b></label>
                                                <input min="0" max="5" type="number" id='qualification' name='qualification' class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="bmd-label-floating"><b>Slider:</b></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Color de fondo</label>
                                                <input style='height: 25px;'class="form-control" type="color" id='color' name='color' required>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-offset-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Texto</label>
                                                <input type="text" id='slider_text' name='slider_text' class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="bmd-label-floating">Imagen de fondo</label>
                                            <input type="file" id='image' name="image"><br><br>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-6 col-lg-offset-9 col-md-offset-9">
                                        <div class="nav-tabs-navigation">
                                            <div class="nav-tabs-wrapper">
                                                <ul class="nav nav-tabs pull-right" data-tabs="tabs">
                                                    <li class="nav-item">
                                                        <button type="submit" class="nav-link">
                                                            <i class="material-icons">done</i> Crear proyecto
                                                        </button>   
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                {{ end_form() }}
                                </div>
                            </div>
                            </div>
                    </div>
                </div>
            </div>

            <footer class="footer">
                <div class="container-fluid">
                <nav class="float-left">
                    <ul>
                    <li>
                        <a href="https://www.ideadesign.com.co">
                        Idea Design
                        </a>
                    </li>
                    
                    </ul>
                </nav>
                <div class="copyright float-right">
                    &copy;
                    <script>
                    document.write(new Date().getFullYear())
                    </script>, made by Viviana Arango.
                </div>
                </div>
            </footer>
        </div>
    </div>

 

</body>
</html>

<script src="../js/jquery-3.1.0.min.js"></script>
<script src="../js/jquery.easing.min.js"></script>
<script src="../js/jquery.mousewheel.min.js"></script>

