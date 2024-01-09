<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LasSuperadoras.Default"
    ClientIDMode="Static" MaintainScrollPositionOnPostback="false" %>

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
        <title>Mejor con Seguros</title>

        <link rel="shortcut icon" href="images/mejor-conseg.png" type="image/x-icon">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="Content/validation.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

        <script src="Scripts/localStorageHandler.js"></script>
        <script src="Scripts/insuranceHandler.js"></script>
        <script src="Scripts/validation.js"></script>


        <script src="Scripts/form.js?t=20231228"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>

    <body class="bodyIndex">
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TZ6NSNW" height="0" width="0"
                style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <nav class="navbar navbar-expand-lg">
            <LasSuperadoras:UpperMenu runat="server" ID="menu"></LasSuperadoras:UpperMenu>
        </nav>
        <div class="waveIndex"></div>
        <main class="mainIndex">

            <section class="inicial">
                <div class="segurasseguro-index">
                    <h1><b class="las">Las</b>
                        <br>
                        <b class="super">Superadoras</b>
                    </h1>
                    <h2>“Seguras de su seguro”</h2>
                    <p>
                        Las aseguradoras que forman Mejor Con Seguros se unieron para ofrecer seguros que cubren
                        necesidades
                        específicas de las mujeres. Aquellas que nos enseñan a superar adversidades, sabiendo que lo que
                        más
                        quieren está protegido.
                    </p>
                </div>

                <div class="chicaConCapa-index">
                    <img src="images/chica-sola-con-capa.png" alt="Chica con capa">
                </div>
            </section>

            <div class="waveIndex waveIndexForm"></div>

            <section class="todasLasMarcas">
                <div class="grupoCardsSimuladorSeguros" data-aos="fade-up" data-aos-duration="3000">
                    <a href="/CnpSeguros">
                        <div data-insurance="CNP" class="cardSimuladorSeguros ">
                            <div>
                                <img src="Images/cnp-seguros.png" alt="Cnp Seguros">
                            </div>
                            <h2>Protegé lo que más querés</h2>
                            <h3>Seguro de vida</h3>
                            <p>Más info</p>
                        </div>
                    </a>

                    <a href="/Sancor Seguros">
                        <div data-insurance="SANCOR" class="cardSimuladorSeguros">
                            <div>
                                <img src="Images/sancosseg.png" alt="Sancor Seguros">
                            </div>
                            <h2>Protegé tu propia vida</h2>
                            <h3>Salud mujer segura</h3>
                            <p>Más info</p>
                        </div>
                    </a>

                    <a href="/Triunfo">
                        <div data-insurance="TRIUNFO" class="cardSimuladorSeguros click">
                            <div>
                                <img src="Images/triunfo.png" alt="Triunfo seguros">
                            </div>
                            <h2>Protegé tu bienestar</h2>
                            <h3>Accidentes Personales</h3>
                            <p>Más info</p>
                        </div>
                    </a>

                    <a href="/Rus">
                        <div data-insurance="RUS" class="cardSimuladorSeguros ">
                            <div>
                                <img src="Images/rus.png" alt="Rus, Río Uruguay Seguros">
                            </div>
                            <h2>Protegé tu lugar en el mundo</h2>
                            <h3>Seguro de Hogar</h3>
                            <p>Más info</p>
                        </div>
                    </a>

                    <a href="/LaSegunda">
                        <div data-insurance="LASEGUNDA" class="cardSimuladorSeguros">
                            <div>
                                <img src="Images/lasegunda.png" alt="La Segunda Seguros">
                            </div>
                            <h2>Protegé tus pertenencias</h2>
                            <h3>Bolso Protegido</h3>
                            <p>Más info</p>

                        </div>
                    </a>



                </div>

            </section>



        </main>
        <LasSuperadoras:Footer runat="server" ID="footer"></LasSuperadoras:Footer>

    </body>

    </html>