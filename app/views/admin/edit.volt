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
                <center><a href="https://www.ideadesign.com.co" target='_blank'><img border="0" src="../images/Icono02.png" width="100" height="100"></a></center>
                <a href="https://www.ideadesign.com.co" target='_blank' class="simple-text logo-normal">Idea Design</a>
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
                        <a class="nav-link" href="{{url('admin/experience')}}">
                            <i class="material-icons">work</i>
                            <p>Experiencia y estudios</p>
                        </a>
                    </li>
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
                                <h4 class="card-title">Editar Proyecto</h4>
                                <p class="card-category">Completa tu proyecto</p>
                                </div>
                                <div class="card-body">
                                {{ form("admin/edit", "method":"post") }}
                                    <input name='validate' type="hidden" value="1">
                                    <input name='id' type="hidden" value='{{ project.id_project }}'>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Color</b></label>
                                                <div class="form-check">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <center><div style='width:50px;' class='div-blue'></div></center>
                                                                {% if project.text_alignment == 1 %}
                                                                    <input class="form-check-input" name='color' type="radio" value="1" checked>
                                                                {% else %}
                                                                    <input class="form-check-input" name='color' type="radio" value="1">
                                                                {% endif %}
                                                                <span class="form-check-sign">
                                                                    <span class="check"></span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <center><div style='width:50px;' class='div-red'></div></center>
                                                                {% if project.text_alignment == 1 %}
                                                                    <input class="form-check-input" name='color' type="radio" value="2">
                                                                {% else %}
                                                                    <input class="form-check-input" name='color' type="radio" value="2" checked>
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
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating"><b>Alineación del texto</b></label>
                                                <div class="form-check">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <label class="bmd-label-floating">Derecha</label>
                                                                {% if project.text_alignment == 1 %}
                                                                    <input class="form-check-input" name='align' type="radio" value="2">
                                                                {% else %}
                                                                    <input class="form-check-input" name='align' type="radio" value="2" checked>
                                                                {% endif %}
                                                                <span class="form-check-sign">
                                                                    <span class="check"></span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <label class="form-check-label">
                                                                <label class="bmd-label-floating">Izquierda</label>
                                                                {% if project.text_alignment == 1 %}
                                                                    <input class="form-check-input" name='align' type="radio" value="1" checked>
                                                                {% else %}
                                                                    <input class="form-check-input" name='align' type="radio" value="1">
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
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="bmd-label-floating"><b>Nombre del proyecto:</b></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating">Texto 1</label>
                                            <input type="text" id='text1' name='text1' class="form-control" value='{{ project.text1 }}' require>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating">Texto 2</label>
                                            <input type="text" id='text2' name='text2' value='{{ project.text2 }}' class="form-control" require>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="bmd-label-floating"><b>Descripción:</b></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating">Texto 3 (Opcional)</label>
                                            <input type="text" id='text3' name='text3' value='{{ project.text3 }}' class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating">Texto 4</label>
                                            <input type="text" id='text4' name='text4' value='{{ project.text4 }}' class="form-control" require>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="bmd-label-floating">Imagen</label>
                                            <input type="file" name="image" id="image" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-success pull-right">Editar Proyecto</button>
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
