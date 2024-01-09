<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cnp.aspx.cs" Inherits="LasSuperadoras.Cnp" %>

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
        <title>Mejor con Seguros | CNP</title>

        <link rel="shortcut icon" href="images/mejor-conseg.png" type="image/x-icon">

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


            <section class="marcaSeguro">
                <div class="ofrecimientoXMarca-page" id="irSeguros">
                    <img src="images/cnp-principal.png" alt="CNP" class="logoPrincipal">
                    <h1>Protegé lo que<br> más querés</h1>
                    <p>Tus ingresos pueden variar a lo largo de tu vida, pero tus necesidades básicas y las de tu
                        familia siempre van a ser las mismas.
                        Viví con la tranquilidad que los que más querés, tendrán un respaldo económico en su futuro.
                    </p>
                    <h2>Seguro de vida</h2>
                    <p class="info" data-bs-toggle="modal" data-bs-target="#vidaModal">+info</p>
                    <hr class="b-gradiente">
                    <p class="precio">Precio promocional: <b class="number">$300</b> mensuales.</p>
                    <hr class="b-gradiente">
                </div>
            </section>



            <div class="waveIndex waveIndexForm"></div>

            <section class="formulario" id="irForm">
                <h2>CONTRATÁ TU SEGURO</h2>
                <p>Dejanos tus datos y nos contactaremos con vos</p>

                <form>

                    <div class="mb-3" data-form-info="name">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" maxlength="50" data-minlength="2" class="form-control" id="nombre"
                            aria-describedby="emailHelp" data-required='Y'>
                    </div>
                    <div class="mb-3" data-form-info="province">
                        <label for="provincia" class="form-label">Provincia</label>
                        <select class="form-select" id="provincia" aria-label="Default select example"
                            data-required='Y'>
                            <option value="" selected></option>
                            <option value="1">Buenos Aires</option>
                            <option value="2">Ciudad Autónoma de Buenos Aires</option>
                            <option value="3">Catamarca</option>
                            <option value="4">Chaco</option>
                            <option value="5">Chubut</option>
                            <option value="6">Córdoba</option>
                            <option value="7">Corrientes</option>
                            <option value="8">Entre Ríos</option>
                            <option value="9">Formosa</option>
                            <option value="10">Jujuy</option>
                            <option value="11">La Pampa</option>
                            <option value="12">La Rioja</option>
                            <option value="13">Mendoza</option>
                            <option value="14">Misiones</option>
                            <option value="15">Neuquén</option>
                            <option value="16">Río Negro</option>
                            <option value="17">Salta</option>
                            <option value="18">San Juan</option>
                            <option value="19">San Luis</option>
                            <option value="20">Santa Cruz</option>
                            <option value="21">Santa Fé</option>
                            <option value="22">Santiago del Estero</option>
                            <option value="23">Tierra del Fuego</option>
                            <option value="24">Tucumán</option>
                        </select>
                    </div>

                    <div class="mb-3" data-form-info="city">
                        <label for="localidad" class="form-label">Localidad</label>
                        <input type="text" maxlength="50" data-minlength="2" class="form-control" id="ciudad"
                            aria-describedby="emailHelp" data-required='Y'>
                    </div>

                    <div class="mb-3" data-form-info="channel">
                        <label for="exampleInputEmail1" class="form-label">¿Por qué medio preferís que te
                            contactemos?</label>
                        <select class="form-select" id="canal" aria-label="Default select example" data-required='Y'>
                            <option value="" selected></option>
                            <option value="1">Teléfono</option>
                            <option value="3">Mail</option>
                        </select>
                    </div>


                    <div class="mb-3" data-form-info="numberemail">
                        <label for="numeroContacto" class="form-label">Pasanos tu número para contactarte</label>
                        <input type="text" maxlength="255" class="form-control" id="numeroContacto"
                            aria-describedby="emailHelp" data-required='Y' data-minlength="2">
                    </div>

                    <button type="button" class="btn fs-lg type-blue">ENVIAR</button>

                </form>
            </section>

            <div class="waveIndex"></div>


            <section class="inicial inicialMarcas">


                <div class="chicaConCapa">
                    <img src="images/chica-cnp.png" alt="Chica con capa">
                </div>

                <div class="segurasseguro">
                    <h1><b class="seguros-m">¡Seguros para mujeres</b>
                        <br>
                        <b class="superadoras-m">Superadoras!</b>
                    </h1>

                    <div>
                        <hr class="b-gradiente w-100">
                        <p class="precio">¡Únicos, accesibles, superadores!</p>
                        <hr class="b-gradiente w-100">
                    </div>
                    <p class="text-marcas">
                        Las aseguradoras que forman Mejor Con Seguros se unieron para ofrecer seguros que cubren
                        necesidades específicas de las mujeres. Aquellas que nos enseñan a superar adversidades,
                        sabiendo que lo que más quieren está protegido.
                    </p>
                </div>


            </section>




            <LasSuperadoras:PopupModal runat="server" ID="pupmodal"></LasSuperadoras:PopupModal>

            <!-- Modal Error form -->
            <div class="modal fade" id="ValidationErrorModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                                aria-label="Close">
                            </button>
                        </div>
                        <div class="modal-body">
                            <h3>Campos incorrectos</h3>
                            <p>
                                Por favor corregí los campos marcados con error para poder enviar el formulario.
                            </p>
                        </div>

                    </div>
                </div>
            </div>


            <div class="modal fade" id="SentErrorModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                                aria-label="Close">
                            </button>
                        </div>
                        <div class="modal-body">
                            <h3>Error</h3>
                            <p>
                                Ha ocurrido un error enviando los datos, por favor reintente la operación .
                            </p>
                        </div>

                    </div>
                </div>
            </div>


            <!-- Modal Envío form -->
            <div class="modal fade" id="SentFormOKModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                                aria-label="Close">
                            </button>
                        </div>
                        <div class="modal-body">
                            <h3>Felicitaciones!</h3>
                            <p>
                                Los datos se han enviado correctamente.
                            </p>
                        </div>

                    </div>
                </div>
            </div>


        </main>
        <LasSuperadoras:FooterMarcas runat="server" ID="footer"></LasSuperadoras:FooterMarcas>

    </body>

    </html>