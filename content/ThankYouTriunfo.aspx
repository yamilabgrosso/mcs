<!-- <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYouTriunfo.aspx.cs" Inherits="LasSuperadoras.ThankYouTriunfo" %> -->

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
    <title>Mejor con Seguros | Gracias</title>
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

<body class="gracias-ty">
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZ6NSNW" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <main>
        <h1>¡Gracias!</h1>
        <p>Uno de nuestros operadores se pondrá en<br> contacto con vos en breve.</p>
        <div class="waveIndex waveGracias"></div>

        <p>Conocé otras propuestas pensadas especialemente para vos</p>

        <section class="pb-5">

            <a href="/Cnp">
                <div>
                    <p class="title">Seguro de Vida</p>
                    <img src="images/cnp-seguros.png" alt="CNP">
                    <p class="info">+info</p>
                </div>
            </a>

            <a href="/Sancor">
                <div>
                    <p class="title">Seguro de Salud</p>
                    <img src="images/sancorseg.png" alt="Sancor">
                    <p class="info">+info</p>
                </div>
            </a>


            <a href="/LaSegunda">
                <div>
                    <p class="title">Seguro de Bolso Protegido</p>
                    <img src="images/lasegunda.png" alt="La Segunda">
                    <p class="info">+info</p>
                </div>
            </a>



            <a href="/Rus">
                <div>
                    <p class="title">Seguro de Hogar</p>
                    <img src="images/rus.png" alt="RUS">
                    <p class="info">+info</p>
                </div>
            </a>


        </section>

        <a class="navbar-brand btn type-blue" href="/Inicio">
            VOLVER AL INICIO
        </a>

        <div class="pb-5"></div>
    </main>

</html>