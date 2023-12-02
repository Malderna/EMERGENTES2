<%
    String opcion = request.getParameter("opcion");
%>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Punto de venta</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("clientes") ? "active" : "")%>" aria-current="page" href="ClienteControlador">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("productos") ? "active" : "")%>" href="ProductoControlador">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("ventas") ? "active" : "")%>" href="VentaControlador">Ventas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("usuario") ? "active" : "")%>" href="UsuarioControlador">Usuario</a>
                    </li>
                </ul>
                <a href="LoginnControlador?action=logout" class="btn btn-outline-success" type="submit">Cerrar sesion</a>
            </div>
        </div>
    </nav>
</header> 

<!--<ul class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("productos") ? "active" : "")%>" href="productos.jsp">Productos</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("clientes") ? "active" : "")%>" href="ClienteControlador">Clientes</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("ventas") ? "active" : "")%>" href="VentaControlador">Ventas</a>
    </li>
</ul>-->
