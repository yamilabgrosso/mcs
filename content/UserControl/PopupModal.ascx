<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PopupModal.ascx.cs" Inherits="LasSuperadoras.UserControl.PopupModal" %>
       <!-- Modal Protege lo que más querés -->
        <div class="modal fade" id="vidaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="flex-c-center">
                            <img class="logoModal" src="images/cnp-seguros-color.png" alt="Logo CNP Seguros">
                            <hr>
                            <img class="iconoModal" src="images/cora-azul.png" alt="Corazón">
                            <h2>Protegé lo que más querés</h2>
                        </div>
                        <p>Tu trabajo, tu contexto o tus ingresos pueden variar a lo largo de tu vida, pero tus
                            necesidades básicas y las de tu familia van a ser siempre las mismas. <br>
                            Aunque ya no estés, con la contratación de este seguro le garantizás a tu familia una ayuda
                            económica para cubrir los gastos de todos los días.
                        </p>
                        <h3>Seguro de Vida</h3>

                        <p><b>¿Qué cubre?</b><br>
                            Fallecimiento por cualquier causa por $1.000.000.<br>
                            Una indemnización económica que ayuda a tu familia cuando más lo necesita.<br><br>
                            <b>Premio mensual por persona:</b><br>  Varía según la edad del titular desde $173 a $2,977.<br>
                        </p>
                    </div>
                    <button class="btn type-orange button-loquiero" data-insurance="CNP" data-bs-dismiss="modal"><a   data-insurance="CNP">LO QUIERO</a></button>
                </div>
            </div>
        </div>

        <!-- Modal Protege tu propia vida -->
        <div class="modal fade" id="tuvidaModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="flex-c-center">
                            <img class="logoModal" src="images/sancor-seguros-color.png" alt="Logo Sancor Seguros">
                            <hr>
                            <img class="iconoModal" src="images/mas-azul.png" alt="Salud">
                            <h2>Protegé tu propia vida</h2>
                        </div>
                        <p>El aumento de las enfermedades relacionadas con el estilo de vida, el incremento de los
                            accidentes y por ende, los elevados gastos médicos, entre otros motivos, hacen que contar
                            con un Seguro de Salud se vuelva una verdadera inversión.
                        </p>
                        <h3>¿Qué es Salud Segura Mujer?</h3>
                        <p>
                            Se trata de una cobertura indemnizatoria que brinda respuesta en efectivo para disponer libremente del dinero en caso de alguna de las enfermedades cubiertas.<br><br>
                            <b>Coberturas:</b><br> Indemnización por diagnóstico de cáncer primario: Cáncer de ovarios; Cáncer de mama; Cáncer de cérvix o cuello uterino; Cáncer de endometrio uterino. En caso de diagnóstico de cáncer primario se abona el total de la suma asegurada.
                            <br><br>
                            <b>Premio mensual por persona:</b><br> $330 (sin incluir sellado provincial)
                            <br><br>
                            <b>Suma Asegurada:</b><br>
                            $660.000
                            <br><br>
                            <b>Edades Asegurables:</b><br>
                            Edad mínima de ingreso: desde los 15 hasta los 60 años.<br>
                            Edad límite de permanencia: 65 años.
                            <br><br>
                            <b>¿Qué hacer en caso de siniestros?</b><br>
                           Se deberá completar y remitir a Sancor Seguros el formulario de Solicitud de Beneficios adjunto a la documentación que se detalla a continuación, dependiendo de la cobertura afectada:<br>
                            •	Informe anatomo patológico.<br>
                            •	Historia Clínica completa que incluya estudios complementarios.
                            <br>
                        </p>
                    </div>
                    <button class="btn type-orange button-loquiero" data-insurance="SANCOR" data-bs-dismiss="modal"><a  data-insurance="SANCOR">LO QUIERO</a></button>
                </div>
            </div>
        </div>
        
        <!-- Modal Protege tu lugar en el mundo -->
        <div class="modal fade" id="lugarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="flex-c-center">
                            <img class="logoModal" src="images/rus-seguros-color.png" alt="Logo RUS Seguros">
                            <hr>
                            <img class="iconoModal" src="images/pulso-azul.png" alt="Corazón con línea de pulso">
                            <h2>Protegé tu lugar en el mundo</h2>
                        </div>
                       <p>Tener un Seguro de Hogar es un respaldo económico que brinda estabilidad y garantiza
                            seguridad. Siempre tenemos necesidades de mantenimiento o averías imprevistas por las cuales
                            tenés que recurrir a un profesional para repararlas. Esto implica un desembolso económico,
                            que en la mayoría de los casos cubre el seguro.
                        </p>
                        <h3>Pack Hogar</h3>
                        <p>Seas propietaria o no, te cubre en caso de incendios, rotura de cristales, robo de mobiliario y todo riesgo en electrodomésticos y tecnología de la vivienda de uso familiar. Además,
                            cuenta con servicios adicionales.<br><br>
                            Coberturas y sumas aseguradas:<br>
                            Incendio de edificio*: $5.000.000<br>
                            Cristales: $10.000<br>
                            Incendio contenido**: $1.000.000<br>
                            Robo y/o hurto (excluye electrodomésticos): $100.000<br>
                            Todo Riesgo electrodomésticos: $150.000<br>
                            Todo Riesgo tecnología en el mundo (excluye hurto): $50.000<br>
                            *Daños por granizo, huracan, ciclon, tornado, terremoto: $1.000.000<br>
                            **Daños por granizo, huracan, ciclon, tornado, terremoto: $200.000<br>
                            <br>
                            <b>Todas las coberturas son a primer riesgo</b>
                            <br><br>
                            <b>¿Qué tipo de vivienda puedo asegurar?</b><br>
                            Cualquier vivienda que sea de uso familiar y de ocupación permanente o semipermanente
                            (habitada
                            como mínimo 45 días consecutivos o 120 alternados en el año).<br><br>
                            <b>¿Puedo contratar una póliza si soy inquilino?</b><br>
                            Sí. No es requisito ser propietario para contratar este tipo de seguros.<br><br>
                            <b>¿Qué medidas de seguridad tiene que tener mi vivienda?</b><br>
                            Las medidas mínimas de seguridad que no pueden faltar son:<br>
                            cerraduras tipo doble paleta en puertas al exterior y construcción con materiales
                            ignífugos.<br>
                            Si no cuenta con rejas y/o persianas y/o postigones y/o vidrio blindex en las aberturas,
                            debe poseer sistema de alarma. Si limita con obra en construcción no habitada y/o terreno
                            baldío
                            o no está construida de medianera a medianera, debe contar con muros con una altura mínima
                            de
                            1,80 metros. <br>
                            En barrios privados (con cerco y vigilancia las 24 horas) y departamentos desde el 3er piso en
                            adelante solo se requieren las medidas mínimas.
                        </p>
                    </div>
                    <button class="btn type-orange button-loquiero"  data-insurance="RUS" data-bs-dismiss="modal"><a  data-insurance="RUS">LO QUIERO</a></button>
                </div>
            </div>
        </div>

        <!-- Modal Protege tu bienestar -->
        <div class="modal fade" id="bienestarModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="flex-c-center">
                            <img class="logoModal" src="images/triunfo-seguros-color.png" alt="Logo Triunfo Seguros">
                            <hr>
                            <img class="iconoModal" src="images/pulso-azul2.png" alt="Casa">
                            <h2>Protegé tu bienestar</h2>
                        </div>
                        <p>Se entiende por ACCIDENTE la acción repentina de un agente externo violento y tenga como consecuencia una lesión o la muerte del asegurado independiente de su voluntad. El Premio de dicha cobertura depende básicamente de las actividades de los Asegurados.</p>
                        <h3>Accidentes Personales</h3>
                        <p style="padding-bottom:0;">
                        - Asegurables: Personas<br>
                        - Plazo de Cobertura: Anual, renovable automáticamente en cada aniversario de póliza el premio podrá ir variando.<br>
                        - Cantidad de Personas: 1<br>
                        - Riesgos Cubiertos: Cobertura básica: Muerte por Accidente.<br> 
                        - Cláusula adicional de Invalidez: Invalidez total o parcial permanente por accidente. <br>
                        - Cláusula adicional de Salud: Gastos Médicos ocasionados por accidente.<br>
                        - Edad límite de ingreso: 64 años. <br>
                        - Edad límite de Permanencia:65 años.<br>
                        - Capitales Asegurados: <br>
                        </p>
                        <ul>
                            <li>Muerte accidental: Capital Máximo $ 1.000.000.-</li>
                            <li>Invalidez total Permanente a consecuencia de un accidente: suma máxima no superior al de muerte.</li>
                            <li>Asistencia Médica Farmacéutica hasta la suma asegurada de $ 200.000.-</li>
                        </ul>

                        <p style="padding-bottom:0;">
                        In itinere – Excluye uso de Bicicleta y/o Motocicleta<br>
                        - Premio: valor de cuota mensual desde $600 <br>
                        - Elementos para realizar la cotización:<br>
                        </p>

                        <ul>
                            <li>Fechas de Nacimiento o edades:</li>
                            <li>Actividad del asegurado: </li>
                        </ul>

                        
                        Ante un accidente el contratante deberá comunicarse a TRIUNFO ASISTENCIA 08106660302 opción 1 Urgencias médicas a los efectos de solicitar la prestación, quien les brindará el procedimiento a seguir en caso de una emergencia por cualquier accidente cubierto por póliza. 

                        </p>
                    </div>
                    <button class="btn type-orange button-loquiero" data-insurance="TRIUNFO" data-bs-dismiss="modal"><a  data-insurance="TRIUNFO">LO QUIERO</a></button>
                </div>
            </div>
        </div>

        <!-- Modal Protege tus pertenencias -->
        <div class="modal fade" id="pertenenciasModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close closeModal" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="flex-c-center">
                            <img class="logoModal" src="images/la-segunda-seguros.png" alt="Logo la segunda seguros">
                            <hr>
                            <img class="iconoModal2" src="images/bolso-azul.png" alt="Bolso azul">
                            <h2>Protegé tus pertenencias</h2>
                        </div>
                        <p>Al mundo no debería importarle lo que llevas en tu cartera. Si te importa a vos, nosotros te lo cubrimos. ¿Qué me cubre? El robo de tu bolso y todos los objetos que lleves en él, dentro y fuera del país, mediante el uso de violencia física, intimidación o fuerza.</p>
                        <h3>Bolso Protegido</h3>
                        <p>Una práctica solución para proteger tu bolso, asegurando el robo total del bien declarado en
                            póliza. La suma máxima asegurada es de $35.000.
                            <br><br>
                            Coberturas y sumas aseguradas:<br>
                            Bolso contenedor: $5.000<br>
                            Dinero en efectivo: $4.000<br>
                            Lentes recetados/de contacto: $4.000<br>
                            Lentes de sol: $3.000<br>
                            Cosméticos/perfumes: $2.000<br>
                            Celular/reproductor de audio: $7.500<br>
                            Reembolso de llaves: $3.000<br>
                            Reembolso de documentos: $3.000<br>
                            Gastos de movilidad o traslado: $3.500<br>
                            <br><br>
                            Excluye: hurto, extravío o desaparición, cuando los bienes no se encuentran bajo la custodia
                            directa de la persona asegurada.
                            <br><br>
                            <b>¿Tengo cobertura si me roban el bolso en el exterior?</b><br>
                            Este seguro te cubre dentro y fuera del país, ante el robo de tu bolso y todos los objetos
                            que lleves en él, mediando el uso de violencia física, intimidación o fuerza.<br><br>
                            <b>¿Qué plazo tengo para hacer la denuncia?</b><br>
                            Si bien tenés un plazo de 72 hs. para hacer la Denuncia Policial, te recomendamos efectuarla
                            de inmediato en la seccional más cercana. Recordá incluir en la denuncia un detalle de los
                            bienes robados.

                        </p>
                    </div>
                    <button class="btn type-orange button-loquiero" data-insurance="LASEGUNDA" data-bs-dismiss="modal"><a  data-insurance="LASEGUNDA">LO QUIERO</a></button>
                </div>
            </div>
        </div>
