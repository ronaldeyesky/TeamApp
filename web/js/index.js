$(document).ready(function () {
    $(".logueo_ta").submit(function () {
        $("#mensaje").removeClass().addClass('myinfo').text('Validando Datos... ').fadeIn(50);
        this.timer = setTimeout(function () {
            $.ajax({
                type: 'POST',
                url: 'validar',
                data: $(".logueo_ta").serialize(),
                success: function (msg) {
                    if (msg === '1')
                            //if (true)

                            {
                                $("#mensaje").html('Usuario Verificado!').addClass('myinfo').fadeTo(50, 1,
                                        function ()
                                        {
                                            //document.location = 'menu?opc=p';
                                        });
                                document.location = 'menu';
                            } else {
                        $("#mensaje").fadeTo(20, 0.1, function ()
                        {
                            $(this).html('Disculpe. USUARIO Y CLAVE INCORRECTO').removeClass().addClass('myerror').fadeTo(50, 1);
                        });
                    }
                }
            });
        }, 200);
        return false;
    });
});