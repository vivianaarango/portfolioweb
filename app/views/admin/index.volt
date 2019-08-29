<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link href="css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
</head>

<body class="">

    <div class="wrapper ">
        <div class="sidebar" data-color="purple" data-background-color="white" >
            <div class="logo">
                <center><a href={{url('web/index')}} target='_blank'><img border="0" src="images/Log02.png" width="250" height="100"></a></center>
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
            <div class="col-md-10 col-md-offset-1 main">
                {{ flash.output() }}
            </div>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-lg-offset-9 col-md-offset-9">
                            <div class="nav-tabs-navigation">
                                <div class="nav-tabs-wrapper">
                                    <ul class="nav nav-tabs pull-right" data-tabs="tabs">
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{url('admin/new')}}" data-toggle="tab">
                                            <i class="material-icons">control_point</i> Nuevo proyecto
                                            <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-lg-3 col-md-6 col-sm-6 col-lg-offset-6 col-md-offset-6">
                            <div class="card card-stats">
                                <div class="card-header card-header-info card-header-icon">
                                    <div class="card-icon"><i class="material-icons">content_copy</i></div>
                                    <p class="card-category">Proyectos</p>
                                    <h3 class="card-title">{{ count_projects }}</h3>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <a href="{{url('admin/new')}}"><div class="card card-stats">
                                <div class="card-header card-header-success card-header-icon">
                                    <div class="card-icon"><i class="material-icons">control_point</i></div>
                                    <p class="card-category">Crear nuevo</p>
                                    <h3 class="card-title">proyecto</h3>
                                </div>
                            </div></a>
                        </div> -->
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="card-header card-header-info">
                                <h4 class="card-title">Proyectos</h4>
                                <p class="card-category"></p>
                            </div>
                            <div class="card-body table-responsive">
                                <table class="table table-hover">
                                    <thead class="text-info">
                                    <th>Color</th>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Descripción</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </thead>
                                    <tbody>
                                        {% for item in projects %}
                                            <tr>
                                                <td>
                                                    {% if item.color == 1 %}
                                                        <center><div class='div-blue'></div></center>
                                                    {% else %}
                                                        <center><div class='div-red'></div></center>
                                                    {% endif %}
                                                </td>
                                                <td>{{ item.id_project }}</td>
                                                <td>{{ item.text1 }} - {{ item.text2 }}</td>
                                                <td>{{ item.text4}}</td>
                                              
                                                <td>
                                                    {{ form('admin/edit', 'role': 'form') }}
                                                        <input type='hidden' name='id_project' id='id_project' value={{ item.id_project }}>
                                                        <button class="nav-link options" type='submit'>
                                                            <i style='color: #456168;' class="material-icons">edit</i>
                                                        </button>
                                                    {{ end_form() }} 
                                                </td>
                                                <td>
                                                    {{ form('admin/delete', 'role': 'form') }}
                                                        <input type='hidden' name='id_pjt' id='id_pjt' value={{ item.id_project }}>
                                                        <button class="nav-link options" type='submit'>
                                                            <i style='color: #456168;' class="material-icons">delete_sweep</i>
                                                        </button>
                                                    {{ end_form() }} 
                                                </td>
                                                <td>
                                                    {{ form('admin/detail', 'role': 'form') }}
                                                        <input type='hidden' name='id_project' id='id_project' value={{ item.id_project }}>
                                                        <button class="nav-link options" type='submit'>
                                                            <i style='color: #456168;' class="material-icons">details</i>
                                                        </button>
                                                    {{ end_form() }} 
                                                </td>
                                            </tr>
                                        {% endfor %}
                                    </tbody>
                                </table>
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
