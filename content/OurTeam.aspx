<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurTeam.aspx.cs" Inherits="LasSuperadoras.OurTeam" %>

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
        <title>Mejor con Seguros | Equipo</title>
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


    <body class="bodyEquipo">
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZ6NSNW" height="0" width="0"
                style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <nav class="navbar navbar-expand-lg navEquipo">
            <LasSuperadoras:UpperMenu runat="server" ID="menu"></LasSuperadoras:UpperMenu>
        </nav>
        <div class="waveEquipo"></div>
        <main class="mainEquipo">
            <section class="sectionEquipo">
                <div>
                    <h1><b class="nuestroText">Nuestro</b> <br><b class="equipoText">equipo</b></h1>
                    <hr>
                </div>
                <img src="images/marcas2.png" alt="Mujer de frente">
            </section>
            <LasSuperadoras:PopupModal runat="server" ID="pupmodal"></LasSuperadoras:PopupModal>
        </main>
        <div class="waveEquipoFinal">
            <img src="images/wave-equipo-final.png" alt="">
        </div>
    </body>

    </html>