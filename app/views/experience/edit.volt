<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link href="../public/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
</head>

<body class="">

    <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="white" >
            <div class="logo">
                <center><a href={{url('web/index')}} target='_blank'><img border="0" src="../images/Log02.png" width="250" height="100"></a></center>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('admin')}}">
                            <i class="material-icons">view_carousel</i>
                            <p>Proyectos</p>
                        </a>
                    </li>
                    <li class="nav-item active">
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
                                    <h4 class="card-title">Crear nueva experiencia o estudio</h4>
                                    <p class="card-category"></p>
                                </div>
                                <div class="card-body">
                                {{ form("experience/new", "method":"post", 'enctype': 'multipart/form-data') }}
                                    <input name='id' type="hidden" value='{{ experience.id_experience }}'>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Tipo</b></label>
                                                <div class="form-check">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <label class="bmd-label-floating">Experiencia</label>
                                                                {% if experience.type == 1 %}
                                                                    <input class="form-check-input" name='experience' type="radio" value="2">
                                                                {% else %}
                                                                    <input class="form-check-input" name='experience' type="radio" value="2" checked>
                                                                {% endif %}

                                                                <input class="form-check-input" name='experience' type="radio" value="2" checked>
                                                                <span class="form-check-sign">
                                                                    <span class="check"></span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <label class="bmd-label-floating">Estudio</label>
                                                                {% if experience.type == 1 %}
                                                                    <input class="form-check-input" name='experience' type="radio" value="1" checked>
                                                                {% else %}
                                                                    <input class="form-check-input" name='experience' type="radio" value="1">
                                                                {% endif %}
                                                                <span class="form-check-sign">
                                                                    <span class="check"></span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Color</b></label>
                                                <input value="{{ experience.color }}" style='height: 25px;'class="form-control" type="color" id='color' name='color' required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating"><b>Título</b></label>
                                            <input value="{{ experience.title }}" type="text" id='title' name='title' class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating"><b>Lugar</b></label>
                                            <input value="{{ experience.place }}" type="text" id='place' name='place' class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating"><b>Fecha o duración</b></label>
                                            <input value="{{ experience.time }}" type="text" id='date' name='date' class="form-control" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3 col-md-6 col-sm-6 col-lg-offset-9 col-md-offset-9">
                                        <div class="nav-tabs-navigation">
                                            <div class="nav-tabs-wrapper">
                                                <ul class="nav nav-tabs pull-right" data-tabs="tabs">
                                                    <li class="nav-item">
                                                        <button type="submit" class="nav-link">
                                                            <i class="material-icons">done</i> Editar
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
