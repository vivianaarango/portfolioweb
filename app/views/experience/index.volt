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
                <center><a href={{url('web/index')}} target='_blank'><img border="0" src="images/Icono02.png" width="100" height="100"></a></center>
                <a href={{url('web/index')}} target='_blank' class="simple-text logo-normal">Idea Design</a>
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
                                            <a class="nav-link" href="{{url('experience/new')}}" data-toggle="tab">
                                            <i class="material-icons">control_point</i> Agregar
                                            <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="card-header card-header-info">
                                <h4 class="card-title">Experiencia y estudios</h4>
                                <p class="card-category"></p>
                            </div>
                            <div class="card-body table-responsive">
                                <table class="table table-hover">
                                    <thead class="text-info">
                                        <th>Color</th>
                                        <th>Id</th>
                                        <th>Tipo</th>
                                        <th>Titulo</th>
                                        <th>Lugar</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </thead>
                                    <tbody>
                                        {% for item in experience %}
                                            <tr>
                                                <td>
                                                    <center><div class='div-color' style="background-color: {{ item.color }}"></div></center>
                                                </td>
                                                <td>{{ item.id_experience }}</td>
                                                <td>
                                                    {% if item.type == 1 %}
                                                        Estudio
                                                    {% else %}
                                                        Experiencia laboral
                                                    {% endif %}
                                                </td>
                                                <td>{{ item.title }}</td>
                                                <td>{{ item.place }}</td>
                                                <td>
                                                    {{ form('experience/edit', 'role': 'form') }}
                                                        <input type='hidden' name='id_project' id='id_project' value={{ item.id_experience }}>
                                                        <button class="nav-link options" type='submit'>
                                                            <i style='color: #456168;' class="material-icons">edit</i>
                                                        </button>
                                                    {{ end_form() }} 
                                                </td>
                                                <td>
                                                    {{ form('experience/delete', 'role': 'form') }}
                                                        <input type='hidden' name='id_pjt' id='id_pjt' value={{ item.id_experience }}>
                                                        <button class="nav-link options" type='submit'>
                                                            <i style='color: #456168;' class="material-icons">delete_sweep</i>
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
