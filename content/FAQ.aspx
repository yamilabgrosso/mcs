<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="LasSuperadoras.FAQ" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <!-- Google Tag Manager -->
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || []; w[l].push({
                    'gtm.start':
                        new Date().getTime(), event: 'gtm.js'
                }); var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TZ6NSNW');</script>
        <!-- End Google Tag Manager -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mejor con Seguros | Preguntas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="shortcut icon" href="images/mejor-conseg.png" type="image/x-icon">
        <link rel="stylesheet" href="style.css">

        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="Scripts/localStorageHandler.js"></script>
        <script src="Scripts/insuranceFromMenu.js"></script>
        <script src="Scripts/secondaryPage.js"></script>

    </head>

    <body class="preguntas">
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZ6NSNW" height="0" width="0"
                style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->


        <nav class="navbar navbar-expand-lg ">
            <LasSuperadoras:UpperMenu runat="server" ID="menu"></LasSuperadoras:UpperMenu>
        </nav>

        <main>
            <section class=" mainPreguntas flex-c-center">

                <div class="sectionPreguntas">
                    <div class="flex-c-center">
                        <h1><b class="preguntasText">Preguntas</b> <br><b class="frecuentes">frecuentes</b></h1>
                        <hr>
                    </div>
                </div>
            </section>


            <section class="flex-c-center accordionPadre">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                ¿Por qué son importantes los seguros?
                            </button>
                        </h2>
                        <hr>
                        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Existen situaciones que no se pueden prever o controlar y que impiden mantener el nivel
                                de
                                ingresos, lo cual puede causar un efecto negativo en tu
                                persona o en el bienestar familiar. Los seguros otorgan un respaldo económico ante
                                posibles
                                imprevistos tales como: enfermedades, accidentes,
                                desastres naturales, daño causado por terceros, entre otros. Una compañía aseguradora
                                mediante
                                el cobro de una cuota, te garantiza un pago (acordado
                                mediante un contrato llamado póliza), para vos o tu familia, en caso de provocarse
                                dichos
                                daños
                                y afectaciones ocasionados tanto a bienes materiales
                                como a personas. </div>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                ¿Qué es un siniestro? </button>
                        </h2>
                        <hr>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Un siniestro es un hecho inesperado cubierto por la póliza de seguro. Un accidente, un
                                fallecimiento, una incapacidad, una necesidad de gastos médicos o
                                el robo del bolso, por ejemplo. </div>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                ¿Cómo denuncio un siniestro? </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Para denunciar un siniestro, el asegurado o sus beneficiarios se deben contactar con la
                                aseguradora para informar lo ocurrido y hacerles llegar la
                                documentación del trámite. </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <LasSuperadoras:Footer runat="server" ID="foot"></LasSuperadoras:Footer>
    </body>

    </html>