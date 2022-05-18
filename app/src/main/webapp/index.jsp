<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String context = request.getContextPath();%>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!--BOOTSTRAP 4.6-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.2/font/bootstrap-icons.min.css" integrity="sha512-YzwGgFdO1NQw1CZkPoGyRkEnUTxPSbGWXvGiXrWk8IeSqdyci0dEDYdLLjMxq1zCoU0QBa4kHAFiRhUL3z2bow==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!--FONTAWESOME ICONS 6.1.1-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>Productos</title>
</head>

<body style="font-family: Arial;">
<!--INICIO DEL TAB DE NAVEGACIÓN-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
  <a class="navbar-brand" href="<s:url action="index" />">Gestor de Inventarios</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="<s:url action="index" />"><i class="bi bi-basket-fill"></i>
        Productos</a>
      <a class="nav-item nav-link" href="<s:url action="cb" />"><i class="bi bi-circle-square"></i> Categorías</a>
    </div>
  </div>
</nav>
<!--FIN DEL TAB DE NAVEGACIÓN-->

<!--INICIO DEL CONTENIDO DE LA PÁGINA-->
<div class="container mt-4">
  <!--ALERTA EN CASO NO HABER NINGÚN REGISTRO-->
  <div class="alert alert-warning">
    <strong>Aún no puedes registrar productos debido a que aún no cuentas con marcas ni categorías. <a
            href="<%=context%>/cb">Ir
      a Marcas y Categorías</a>
    </strong>
  </div>
  <!--CONTENIDO DE LA PÁGINA AL HABER REGISTROS-->
  <div class="row d-flex align-items-start">
    <div class="col-6">
      <h1>Inventario</h1>
    </div>
    <div class="col-6 text-right">
      <h1><i role="button" data-target="#addModal" data-toggle="modal" class="fas fa-plus text-success"></i></h1>
    </div>
  </div>
  <hr class="mt-0">
  <div class="row">
    <!--INICIO DE LA TARJETA-->
    <div class="col-12 col-lg-4">
      <div class="card mb-4 shadow">
        <div class="row">
          <div class="col-6 col-lg-12 d-flex align-items-center">
            <img class="mt-4 mb-4 mb-lg-0" style="width: 100%; height: 200px; object-fit: contain;"
                 src="https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img,w_310,h_310/https://www.cintademoebius.com/wp-content/uploads/2019/04/cubo-rubik.jpg"
                 alt="">
          </div>
          <div class="col-6 col-lg-12 pl-0 pl-lg-4 mt-0 d-flex flex-fill">
            <div class="card-body">
              <div class="badge badge-secondary mb-1"><i class="fas fa-puzzle-piece"></i> Rompecabezas
              </div>
              <h4>Cubo Rubik 3x3 - Fibra de Carbono</h4>
              <p>
                <small><span><strong>Precio: </strong> $200</span></small>
                <br>
                <small><span><strong>Disponible: </strong> 100 unidades</span></small>
              </p>
              <a class="mt-4" href="#infoModal" data-toggle="modal">Mas Información</a>
              <div class="col-12 text-right mt-4">
                <big>
                  <!--<i role="button" title="Añadir a Favoritos"
                      class="fas fa-star mr-3 text-muted"></i>
                  <i role="button" title="Comprar"
                      class="fas fa-shopping-cart mr-3 text-primary"></i>-->
                  <i role="button" title="Eliminar Producto" data-target="#removeModal"
                     data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                  <i role="button" title="Editar Datos" data-target="#modifyModal"
                     data-toggle="modal" class="fas fa-edit mr-3 text-primary"></i>
                  <i role="button" title="Añadir Ejemplares" data-toggle="modal"
                     data-target="#addQuantityModal" class="fas fa-circle-plus text-primary"></i>
                </big>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--FIN DE LA TARJETA-->
  </div>
</div>
<!--FIN DEL CONTENIDO DE LA PÁGINA-->

<!--INICIO MODAL DE REGISTRO-->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content border-0">
      <form action="">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="fas fa-plus"></i> Registrar producto</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="name">Nombre del producto <span class="text-danger">*</span></label>
                  <input type="text" id="name" name="name" placeholder="Ej. Cinta americana"
                         class="form-control" autocomplete="off" required>
                </div>
                <div class="row">
                  <div class="form-group col-6">
                    <label for="price">Precio <span class="text-danger">*</span></label>
                    <input type="number" id="price" name="price" placeholder="Min. $1"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                  <div class="form-group col-6">
                    <label for="quantity">Ejemplares <span class="text-danger">*</span></label>
                    <input type="number" id="quantity" name="quantity" placeholder="Min. 1 unidad"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="marca">Marca <span class="text-danger">*</span></label>
                  <select class="form-control" name="marca" id="marca">
                    <option selected disabled>Seleccione una marca</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="category">Categoría <span class="text-danger">*</span></label>
                  <select class="form-control" name="category" id="category">
                    <option selected disabled>Seleccione una categoría</option>
                  </select>
                </div>
              </div>
              <div class="form-group col-12">
                <label for="url">Url de la imagen <span class="text-danger">*</span></label>
                <input type="text" id="url" name="url" placeholder="Dirección web de la imagen del producto"
                       class="form-control" min="1" autocomplete="off" required>
              </div>
              <div class="form-group col-12">
                <label for="description">Descripción del producto</label>
                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                          name="description" id="description" class="form-control" rows="5"></textarea>
              </div>
            </div>
          </div>
          <div class="card-footer text-right">
            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button class="btn btn-primary">Guardar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!--FIN MODAL DE REGISTRO-->

<!--INICIO MODAL DE MODIFICACIÓN-->
<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content border-0">
      <form action="">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="fas fa-edit"></i> Modificar datos del producto</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="name">Nombre del producto <span class="text-danger">*</span></label>
                  <input type="text" id="name" name="name" placeholder="Ej. Cinta americana"
                         class="form-control" autocomplete="off" required>
                </div>
                <div class="row">
                  <div class="form-group col-6">
                    <label for="price">Precio <span class="text-danger">*</span></label>
                    <input type="number" id="price" name="price" placeholder="Min. $1"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                  <div class="form-group col-6">
                    <label for="quantity">Ejemplares <span class="text-danger">*</span></label>
                    <input type="number" id="quantity" name="quantity" placeholder="Min. 1 unidad"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="marca">Marca <span class="text-danger">*</span></label>
                  <select class="form-control" name="marca" id="marca">
                    <option selected disabled>Seleccione una marca</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="category">Categoría <span class="text-danger">*</span></label>
                  <select class="form-control" name="category" id="category">
                    <option selected disabled>Seleccione una categoría</option>
                  </select>
                </div>
              </div>
              <div class="form-group col-12">
                <label for="url">Url de la imagen <span class="text-danger">*</span></label>
                <input type="text" id="url" name="url" placeholder="Dirección web de la imagen del producto"
                       class="form-control" min="1" autocomplete="off" required>
              </div>
              <div class="form-group col-12">
                <label for="description">Descripción del producto</label>
                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                          name="description" id="description" class="form-control" rows="5"></textarea>
              </div>
            </div>
          </div>
          <div class="card-footer text-right">
            <button class="btn btn-secondary" data-dismiss="modal">Descartar</button>
            <button class="btn btn-primary">Modificar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!--FIN MODAL DE MODIFICACIÓN-->

<!--INICIO MODAL DE AGREGACIÓN-->
<div class="modal fade" id="addQuantityModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-0">
      <form action="">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="bi bi-inboxes-fill text-right"></i> Añadir exitencias</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 mb-3">
                Nombre del producto:
                <h4>Cubo Rubik 3x3 - Fibra de Carbono</h4>
              </div>
              <div class="col-12">
                <p class="mb-2">Total de unidades:</p>
                <div class="input-group">
                  <input type="number" class="form-control text-center" disabled value="300"
                         name="" id="">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-plus"></i></span>
                  </div>
                  <input type="number" placeholder="Unidades a agregar"
                         class="form-control text-center" pattern="[0-9]+" name="" id="">
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer text-right">
            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button class="btn btn-primary">Agregar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!--FIN MODAL DE AGREGACIÓN-->

<!--INICIO MODAL DE INFORMACIÓN-->
<div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-0">
      <div class="card border-0">
        <div class="card-header pb-1 bg-dark text-white">
          <h3><i class="fas fa-info-circle"></i> Información del producto</h3>
        </div>
        <div class="card-body">
          <p>
            <strong>Marca: </strong>Rubik's Cubes
          </p>
          <p class="text-justify">
            <strong>Descripción del producto:</strong> Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Consectetur omnis iusto dolores tempore. Incidunt a tempora repellat
            iusto velit amet beatae eos cupiditate, illum, quos sunt ducimus, minima cumque quasi!
          </p>
          <div class="block d-flex align-items-center">
            <img style="width: 100%; height: 100px; object-fit: contain;"
                 src="data:image/png;base64,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"
                 alt="">
          </div>
        </div>
        <div class="card-footer text-right">
          <button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
</div>
<!--FIN MODAL DE INFORMACIÓN-->

<!--INICIO MODAL ELIMINACIÓN-->
<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-0">
      <form action="">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="fas fa-triangle-exclamation"></i> Atención</h3>
          </div>
          <div class="card-body">
            <strong>Esta acción es irreversible</strong> ¿Está seguro que desea eliminar este producto?
          </div>
          <div class="card-footer text-right">
            <input type="text" hidden id="" name="">
            <button class="btn btn-danger">Eliminar</button>
            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!--FIN MODAL DE ELIMINACIÓN-->
</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</html>