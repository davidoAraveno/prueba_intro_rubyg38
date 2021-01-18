def elementos_api(api)
    contenido = ''

    api["photos"].each do |i|
        i.each do |x,v|
            if x == "img_src"
                contenido += "<div class='col-md-3'>
                                "+imagen(v)+"
                            </div>
                            "
            end
        end
    end

    return contenido
end

# ////////////////////////////////////////////////////////////////////////////////////////////////

def imagen(link)
    "<img src='#{link}' class='img-fluid py-3'>"
end