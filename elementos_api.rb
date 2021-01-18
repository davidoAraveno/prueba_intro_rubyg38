def elementos_api(api)
    contenido = ''
    count = 0

    api["photos"].each do |i|
        i.each do |x,v|
            if x == "img_src"
                contenido += "<div class='col-md-3'>
                                "+imagen(v)+"
                            </div>
                            "
                count += 1
            end
        end
    end

    return [contenido,count.to_s]
end

# ////////////////////////////////////////////////////////////////////////////////////////////////

def imagen(link)
    "<img src='#{link}' class='img-fluid py-3'>"
end