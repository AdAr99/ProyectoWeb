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
          <h1>Editar Nota</h1>
          <form action="editarNota" method="post"> 

            
            
            <label for="titulo">Titulo:</label>
                                <input type="text" name="titulo" class="form-control" id="titluo" 
                                     required placeholder="Cual es el titulo">
                                   <label for="campotexto">Texto:</label>
                                  <input type="text" name="campotexto" class="form-control" id="campotexto"
                                     required placeholder="Cual es el texto?">
            <button type="submit">Editar Nota</button>

          </form>

      </body>

</html>