<%@page import="com.armesto.adri.Gestor.GestorNotas"%>
<%@page import="com.armesto.adri.modelos.Nota"%>



<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gestor de Notas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      </head>
    <body>

        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.jsp">Inicio</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">  
                    <a class="nav-link active" aria-current="page" href="lista.jsp">Listar</a>
                  </li>
                </ul>
                <ul class="navbar-nav">
                  <li class="nav-item">  
                    <a class="nav-link active" aria-current="page" href="crearNota.jsp">Crear</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>

        <h1>Lista de Notas</h1>

        <div style="display: flex;">
        <div style="margin: auto;">
          <ul class="list-group">
            <% for (Nota nota :  GestorNotas.getNotas()) {%>
            <li class="list-group-item" style="display: flex; margin-bottom: 10px;"> <%=nota.getFechaCreacion() + " | " +nota.getTitulo() %> 
              <form action="" method="post" style="display:flex; margin-left: 10px;">
                <input type="hidden" name="" value="prueba">
                <button type="submit">Editar</button>
              </form>
              <form action="borrar" method="post" style="display:flex; margin-left: 10px;">
              <input type="hidden" name="borrarNota" value="<%= nota.getTitulo() %>">
              <button type="submit">Borrar</button>
            </form>
            </li>

            <%}%>
          </ul>
        </div>
        </div>












         <!-- 
          <% for (Nota nota :  GestorNotas.getNotas()) {%>
            <div text-align="center" style="margin-top: 20px;">
              

                <div class="container text-center" style="border:1px solid black;border-radius: 5px;padding: 10px;">
                  <div class="row">
                    <div style="margin:auto; display:flex;">
                      <div class="col-sm-1">
                        <%= nota.getTitulo() %>
                      </div>
                      <div class="col-sm-7">
                        <div class="row">
                          <div class="col-8 col-sm-6">
                            <%= nota.getFechaCreacion() %>
                          </div>
  
                          <div style="display:flex;">
                            <form action="" method="post" style="display:flex;">
                              <input type="hidden" name="" value="prueba">
                              <button type="submit">Editar</button>
                            </form>
                            <form action="borrar" method="post" style="display:flex;">
                            <input type="hidden" name="borrarNota" value="prueba">
                            <button type="submit">Borrar</button>
                          </form>

                          </div>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>             
          <% }%> -->
    </body>

</html>