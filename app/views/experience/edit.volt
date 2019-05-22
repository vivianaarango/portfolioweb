<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.5.3/css/bootstrap-colorpicker.css" rel="stylesheet">

    </head>
    <body>
        <div class="jumbotron">
            <h1>Bootstrap Colorpicker Demo</h1>
            <input id="demo" type="text" class="form-control" value="rgb(255, 128, 0)" />
        </div>
        <script src="//code.jquery.com/jquery-3.3.1.js"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.5.3/js/bootstrap-colorpicker.js"></script>
        <script>
            $(function () {
                // Basic instantiation:
                $('#demo').colorpicker();
                
                // Example using an event, to change the color of the .jumbotron background:
                $('#demo').on('colorpickerChange', function(event) {
                $('.jumbotron').css('background-color', event.color.toString());
                });
            });
        </script> 
    </body>

