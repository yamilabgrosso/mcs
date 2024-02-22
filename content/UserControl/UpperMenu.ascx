<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpperMenu.ascx.cs" Inherits="LasSuperadoras.UserControl.UpperMenu" %>
  
        <div class="container-fluid">
            <a class="navbar-brand" href="/Inicio">
                <img src="images/logo.png" alt="Logo" width="202" height="67" class="d-inline-block align-text-top">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav menu">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">Propuestas
                        </a>
                        <ul class="dropdown-menu bg-celeste">
                            <li><a class="dropdown-item" href="/Cnp">Seguro de Vida</a>
                            </li>
                            <li><a class="dropdown-item" href="/Sancor">Salud Segura Mujer</a>
                            </li>
                            <li><a class="dropdown-item" href="/Triunfo">Accidenes Personales</a>
                            </li>
                            <li><a class="dropdown-item" href="/Rus">Seguro de Hogar</a>
                            </li>
                            <li><a class="dropdown-item" href="/LaSegunda">Seguro de Movilidad</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/NuestroProposito">Propósito</a>
                        <hr runat="server" id="OurPurposeHr" visible="false" />
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/NuestroEquipo">Nuestro equipo</a>
                        <hr runat="server" id="OurTeamHr" visible="false" />
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/PreguntasFrecuentes">Preguntas</a>
                        <hr runat="server" id="FAQHr" visible="false" />
                    </li>
                    <a class="navbar-brand" href="/Inicio">
                        <img src="images/home.png" alt="home" width="32" class="d-inline-block align-text-top">
                    </a>
                </ul>
            </div>
        </div>
  