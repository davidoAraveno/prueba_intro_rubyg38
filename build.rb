require_relative 'request'
require_relative 'elementos_api'

# //////////////////////////////////////////////////////////////////////////

api_nasa = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=","mCXksvEXaBCZhCq6ee9CcGbB833XgRaPM3b2oesx")


def build_web_page(data)
    '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <link rel="stylesheet" href="styles.css">
        <title>Document</title>
    </head>
    <body>
        <header class="bg-secondary py-2">
            <h1 class="text-white text-center"> Prueba David Aravena </h1>
        </header>
'+
#//////////////////////////////conteo de fotos descargadas//////////////////////////////////
+'
        <h3 class="text-center py-2"> Cantidad de fotos descargadas: '+elementos_api(data)[1]+' </h3>
'+
# ////////////////////////elementos provenientes de la api////////////////////////////////////////////////////
+'
        <main>
            <section class="container">
                <div class="row">
                    '+elementos_api(data)[0]+'  
                </div>
            <section>
        </main
 '+
 #//////////////////////////////////////////////////////////////////////////////////////
 +'



        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
    </html>'
end

File.write("./index.html", build_web_page(api_nasa))