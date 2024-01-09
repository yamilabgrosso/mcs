<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurPurpose.aspx.cs" Inherits="LasSuperadoras.OurPurpose" %>

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
        <meta name="description"
            content="Las aseguradoras que componen Mejor con Seguros se unieron para ofrecer 5 seguros que cubren necesidades específicas de las mujeres. ¡Protegé y protegete!">
        <title>Mejor con Seguros | Propósito</title>
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
        <nav class="navbar navbar-expand-lg">
            <LasSuperadoras:UpperMenu runat="server" ID="menu"></LasSuperadoras:UpperMenu>
        </nav>

        <div class="waveProposito"></div>
        <main class="mainProposito">
            <section class="sectionProposito">
                <div class="flex-c-start">
                    <h1><b class="nuestroText">Nuestro</b> <br><b class="propositoText">propósito</b></h1>
                    <hr>

                    <p><b>Superadoras</b> es el resultado del trabajo colaborativo público - privado, en el marco del
                        proyecto
                        “Mujeres y Seguros” ganador del <b>“Segundo Laboratorio de Innovación en Seguros Inclusivos A2ii
                            –
                            Reos
                            Partner”, promovido por A2ii (Iniciativa de Acceso al Seguro) y la IAIS (Asociación
                            Internacional de
                            Supervisores de Seguros).</b>
                        <br><br>
                        Por primera vez, distintas compañías de seguros se unieron con el objetivo de brindar protección
                        integral a las mujeres, con el apoyo del Ministerio de Economía y la Superintendencia de Seguros
                        de
                        la Nación.
                        <br><br>
                        <b>¿Por qué Mejor con Seguros?</b>
                        <br><br>
                        <b>Para conocer más sobre el iiLab <img src="images/flecha-aqui.png" class="flecha-aqui"
                                alt="Flecha indicadora">
                            <a href="https://a2ii.org/en/iii-lab-2">click acá</a>
                        </b>
                    </p>
                    <div class="redes d-flex align-items-center">
                        <p><b>Nuestras redes sociales</b></p>
                        <a href="https://www.facebook.com/mejorconseguros/" target="_blank"><img
                                src="images/facebook.png" alt="Facebook"></a>
                        <a href="https://www.instagram.com/mejorconseguros/" target="_blank"><img
                                src="images/instagram.png" alt="Instagram"></a>
                    </div>
                    <p>
                        <br>
                        <b>Ministerio de Economía<img src="images/flecha-aqui.png" class="flecha-aqui"
                                alt="Flecha indicadora">
                            <a href="https://www.argentina.gob.ar/economia">click acá</a>
                        </b>
                        <br><br>
                        <b>Superintendencia de Seguros de la Nación<img src="images/flecha-aqui.png" class="flecha-aqui"
                                alt="Flecha indicadora">
                            <a href="https://www.argentina.gob.ar/superintendencia-de-seguros">click acá</a>
                        </b>
                    </p>


                    <div class="redes d-flex align-items-center">
                        <p><b>Ir a Mejor con Seguros</b></p>
                        <a href="http://mejorconseguros.com.ar/informacion/" target="_blank">
                            <img src="images/logo.png" alt="Logo" width="100%" height="28"
                                class="d-inline-block align-text-top ps-3">
                        </a>
                    </div>
                </div>
            </section>
            <section class="mujerFrente">
                <img src="images/mujer-de-frente_02.png" alt="Mujer de frente">
            </section>
        </main>

        <div class="wavePropositoFinal">
            <img src="images/wave-prop-final.png" alt="">
        </div>
        <LasSuperadoras:Footer runat="server" ID="foot"></LasSuperadoras:Footer>
    </body>

    </html>