<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String context = request.getContextPath();%>
<html lang="es" ng-app="inventory">


<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!--ANGULAR-->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
  <script src="<%=context%>/js/angular-route.js"></script>
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

<body style="font-family: Arial;" ng-controller="productInfoController">
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
  <s:if test="categories.isEmpty() && brands.isEmpty()" >
    <!--ALERTA EN CASO NO HABER NINGÚN REGISTRO-->
    <div class="alert alert-warning">
      <strong>Aún no puedes registrar productos debido a que aún no cuentas con marcas ni categorías registradas. <a
              href="<s:url action="cb" />">Ir a Marcas y Categorías</a>
      </strong>
    </div>
  </s:if>
  <s:elseif test="categories.isEmpty()">
    <!--ALERTA EN CASO NO HABER NINGÚN REGISTRO-->
    <div class="alert alert-warning">
      <strong>Aún no puedes registrar productos debido a que aún no cuentas con categorías registradas. <a
              href="<s:url action="cb" />">Ir a Marcas y Categorías</a>
      </strong>
    </div>
  </s:elseif>
  <s:elseif test="brands.isEmpty()">
    <!--ALERTA EN CASO NO HABER NINGÚN REGISTRO-->
    <div class="alert alert-warning">
      <strong>Aún no puedes registrar productos debido a que aún no cuentas con marcas registradas. <a
              href="<s:url action="cb" />">Ir a Marcas y Categorías</a>
      </strong>
    </div>
  </s:elseif>
  <s:elseif test="products.isEmpty()">
    <!--ALERTA EN CASO NO HABER NINGÚN REGISTRO-->
    <div class="alert alert-warning">
      <strong>Aún no cuentas con productos registrados. <a
              href="#addModal" data-toggle="modal">¡Registra un nuevo producto!</a>
      </strong>
    </div>
  </s:elseif>
  <s:else>
    <!--CONTENIDO DE LA PÁGINA AL HABER REGISTROS-->
    <div class="row d-flex align-items-center">
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
      <s:iterator value="products">
        <div class="col-12 col-lg-4">
          <div class="card shadow mb-4">
            <div class="row">
              <div class="col-5 col-lg-12 d-flex align-items-center">
                <img class="mt-4 my-3" style="width: 100%; height: 200px; object-fit: contain;"
                     src="<s:property value="imageUrl" />"
                     alt="">
              </div>
              <div class="col-7 col-lg-12 pl-0 pl-lg-3">
                <div class="card-body">
                  <div class="badge badge-dark mb-1"><i class="fas fa-<s:property value="categoryIconName" />"></i> <s:property value="categoryName" />
                  </div>
                  <h5><s:property value="name" /></h5>
                  <p>
                    <small><span><strong>Precio: </strong> {{ <s:property value="price"/> | currency }}</span></small>
                    <br>
                    <small><span><strong>Disponible: </strong> <s:property value="quantity" /> unidades</span></small>
                  </p>
                </div>
                <div class="card-footer text-right pt-4 pb-0 mb-lg-4 pr-4" style="border: none; background: transparent;">
                  <big>
                    <i role="button" class="fas fa-info-circle mr-3 text-primary" ng-click="getInfo(<s:property value="id" />)"
                       data-target="#infoModal" data-toggle="modal"></i>
                    <i role="button" title="Eliminar Producto" data-target="#removeModal"
                       data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                    <i role="button" ng-click="getInfoUpdate(<s:property value="id" />)" title="Editar Datos" data-target="#modifyModal"
                       data-toggle="modal" class="fas fa-edit mr-3 text-primary"></i>
                    <i role="button" ng-click="getQuantity(<s:property value="id" />)" title="Añadir Ejemplares" data-toggle="modal"
                       data-target="#addQuantityModal" class="fas fa-circle-plus text-primary"></i>
                  </big>
                </div>
              </div>
            </div>
          </div>
        </div>
      </s:iterator>
      <!--FIN DE LA TARJETA-->
    </div>
  </s:else>
</div>
<!--FIN DEL CONTENIDO DE LA PÁGINA-->

<!--INICIO MODAL DE REGISTRO-->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content border-0">
      <form ng-submit="addProduct()">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="fas fa-plus"></i> Registrar producto</h3>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="name">Nombre del producto <span class="text-danger">*</span></label>
                  <input type="text" ng-model="p.name" id="name" name="name" placeholder="Ej. Cinta americana"
                         class="form-control" autocomplete="off" required>
                </div>
                <div class="row">
                  <div class="form-group col-6">
                    <label for="price">Precio <span class="text-danger">*</span></label>
                    <input type="number" ng-model="p.price" id="price" name="price" placeholder="Min. $1"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                  <div class="form-group col-6">
                    <label for="quantity">Ejemplares <span class="text-danger">*</span></label>
                    <input type="number" ng-model="p.quantity" id="quantity" name="quantity" placeholder="Min. 0"
                           class="form-control" min="0" autocomplete="off" required>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="brandId">Marca <span class="text-danger">*</span></label>
                  <select class="form-control" ng-model="p.brandId" name="brandId" id="brandId">
                    <option selected disabled>Seleccione una marca</option>
                    <s:iterator value="brands">
                      <option value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                  </select>
                </div>
                <div class="form-group">
                  <label for="categoryId">Categoría <span class="text-danger">*</span></label>
                  <select class="form-control" ng-model="p.categoryId" name="categoryId" id="categoryId">
                    <option selected disabled>Seleccione una categoría</option>
                    <s:iterator value="categories">
                      <option value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                  </select>
                </div>
              </div>
              <div class="form-group col-12">
                <label for="imageUrl">Url de la imagen <span class="text-danger">*</span></label>
                <input type="text" ng-model="p.imageUrl" id="imageUrl" name="imageUrl" placeholder="Dirección web de la imagen del producto"
                       class="form-control" min="1" autocomplete="off" required>
              </div>
              <div class="form-group col-12">
                <label for="description">Descripción del producto</label>
                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                          ng-model="p.description" name="description" id="description" class="form-control" rows="5"></textarea>
              </div>
            </div>
          </div>
          <div class="card-footer text-right">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="button" ng-click="addProduct()" class="btn btn-primary">Guardar</button>
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
      <form ng-submit="updateProduct()">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="fas fa-edit"></i> Modificar datos del producto</h3>
          </div>
          <div class="card-body">
            <input type="text" hidden ng-model="u.id" id="uId" name="uId">
            <div class="row">
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="uName">Nombre del producto <span class="text-danger">*</span></label>
                  <input type="text" ng-model="u.name" id="uName" name="uName" placeholder="Ej. Cinta americana"
                         class="form-control" autocomplete="off" required>
                </div>
                <div class="row">
                  <div class="form-group col-6">
                    <label for="uPrice">Precio <span class="text-danger">*</span></label>
                    <input type="number" ng-model="u.price" id="uPrice" name="uPrice" placeholder="Min. $1"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                  <div class="form-group col-6">
                    <label for="uQuantity">Ejemplares <span class="text-danger">*</span></label>
                    <input type="number" ng-model="u.quantity" id="uQuantity" name="uQuantity" placeholder="Min. 1 unidad"
                           class="form-control" min="1" autocomplete="off" required>
                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="form-group">
                  <label for="uMarca">Marca <span class="text-danger">*</span></label>
                  <select class="form-control" ng-value="u.brandId" ng-model="u.brandId" name="uMarca" id="uMarca">
                    <option disabled>Seleccione una marca</option>
                    <s:iterator value="brands">
                      <option  value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                  </select>
                </div>
                <div class="form-group">
                  <label for="uCategory">Categoría <span class="text-danger">*</span></label>
                  <select class="form-control" ng-value="u.categoryId" ng-model="u.categoryId" name="uCategory" id="uCategory">
                    <option disabled>Seleccione una categoría</option>
                    <s:iterator value="categories">
                      <option value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                  </select>
                </div>
              </div>
              <div class="form-group col-12">
                <label for="uImageUrl">Url de la imagen <span class="text-danger">*</span></label>
                <div class="input-group">
                  <input type="text" ng-model="u.imageUrl" id="uImageUrl" name="uImageUrl" placeholder="Dirección web de la imagen del producto"
                         class="form-control" min="1" autocomplete="off" required>
                  <div class="input-group-append">
                    <button type="button" class="btn btn-dark" title="Borrar Campo" ng-click="clearInput()"><i class="fas fa-eraser"></i></button>
                  </div>
                </div>
              </div>
              <div class="form-group col-12">
                <label for="uDescription">Descripción del producto</label>
                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                          ng-model="u.description" name="uDescription" id="uDescription" class="form-control" rows="5"></textarea>
              </div>
            </div>
          </div>
          <div class="card-footer text-right">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Descartar</button>
            <button type="submit" class="btn btn-primary">Modificar</button>
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
      <form ng-submit="addQuantity()">
        <div class="card border-0">
          <div class="card-header pb-1 bg-dark text-white">
            <h3><i class="bi bi-inboxes-fill text-right"></i> Añadir exitencias</h3>
          </div>
          <div class="card-body">
            <input type="text" hidden ng-model="a.id">
            <div class="row">
              <div class="col-12 mb-3">
                Nombre del producto:
                <h4>{{ a.name }}</h4>
              </div>
              <div class="col-12">
                <p class="mb-2">Total de unidades:</p>
                <div class="input-group">
                  <input type="number" class="form-control text-center" disabled value="300"
                         ng-model="a.quantity" name="aQuantity" id="aQuantity">
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
            <strong>Marca: </strong>{{ name }}
          </p>
          <p class="text-justify">
            <strong>Descripción del producto: </strong>{{ desc }}
          </p>
          <div class="block d-flex align-items-center">
            <img style="width: 100%; height: 100px; object-fit: contain;"
                 ng-src="{{ image }}"
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
            <input type="text" hidden id="id" name="id">
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

<script src="<%=context%>/js/productController.js"></script>
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