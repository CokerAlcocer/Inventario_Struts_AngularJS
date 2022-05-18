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
    <title>Marcas y categorías</title>
</head>

<body style="font-family: Arial;" class="overflow-auto" ng-controller="categoryController">
<!--INICIO DEL TAB DE NAVEGACIÓN-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="<s:url action="index" />">Gestor de Inventarios</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="<s:url action="index" />"><i class="bi bi-basket-fill"></i>
                Productos</a>
            <a class="nav-item nav-link active" href="<s:url action="cb" />"><i class="bi bi-circle-square"></i> Categorías</a>
        </div>
    </div>
</nav>
<!--FIN DEL TAB DE NAVEGACIÓN-->

<!--INICIO DEL CONTENIDO DE LA PÁGINA-->
<div class="block mx-4" style="margin-top: 80px;">
    <div class="row">
        <div class="col-12 col-lg-8 px-lg-4" id="brands">
            <!--INICIO DEL APARTADO DE MARCAS-->
            <s:if test="brands.size() <= 0 || brands == null">
                <div class="alert alert-warning">
                    <strong>No hay marcas registradas. <a href="#addBrand" data-toggle="modal">¡Registra una nueva!</a></strong>
                </div>
            </s:if>
            <s:else>
                <div class="row d-flex align-items-center">
                    <div class="col-6">
                        <h1>Marcas</h1>
                    </div>
                    <div class="col-6 text-right">
                        <h1><i role="button" data-target="#addBrand" data-toggle="modal" class="fas fa-plus text-success"></i></h1>
                    </div>
                </div>
                <hr class="mt-0">
                <div class="row">
                    <s:iterator value="brands">
                        <div class="col-12 col-sm-6 col-lg-4">
                            <div class="card mb-4 shadow">
                                <img class="px-3 mt-2 mb-0" style="width: 100%; height: 100px; object-fit: contain;"
                                     src="<s:property value="imageUrl" />"
                                     alt="">
                                <div class="card-body mt-0 text-center">
                                    <div class="col-12 mt-0">
                                        <big>
                                            <i role="button" onclick="setIdOnModalBrand(<s:property value="id" />)" title="Eliminar Marca" data-target="#removeBrand"
                                               data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                                            <i role="button" ng-click="getInfoBrand(<s:property value="id" />)" title="Editar Datos" data-target="#modifyBrand"
                                               data-toggle="modal" class="fas fa-edit text-primary"></i>
                                        </big>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </s:iterator>
                </div>
            </s:else>
            <!--FIN DEL APARTADO DE MARCAS-->
        </div>

        <div class="col-12 col-lg-4 px-lg-4" id="categories">
            <!--INICIO DEL APARTADO DE CATEGORÍAS-->
            <s:if test="categories.size() <= 0 || categories == null">
                <div class="alert alert-warning">
                    <strong>No hay categorías registradas. <a href="#addCategory" data-toggle="modal">¡Registra una nueva!</a></strong>
                </div>
            </s:if>
            <s:else>
                <div class="row d-flex align-items-center">
                    <div class="col-6">
                        <h1>Categorías</h1>
                    </div>
                    <div class="col-6 text-right">
                        <h1><i role="button" data-target="#addCategory" data-toggle="modal" class="fas fa-plus text-success"></i></h1>
                    </div>
                </div>
                <hr class="mt-0">
                <div class="block">
                    <!--INICIO DE LA TARJETA DE CATEGORÍA-->
                    <s:iterator value="categories" >
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <h3 class="mt-0"><i class="fas fa-<s:property value="iconName" />"></i> <s:property value="name" /></h3>
                                <div class="row mb-0  d-flex align-items-end">
                                    <div class="col-8">
                                        <span><s:property value="description" /></span>
                                    </div>
                                    <div class="col-4 text-right">
                                        <big>
                                            <i role="button" onclick="setIdOnModalCategory(<s:property value="id" />)" title="Eliminar Categoría" data-target="#removeCategory"
                                               data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                                            <i role="button" ng-click="getInfoCategory(<s:property value="id" />)" title="Editar Datos" data-target="#modifyCategory"
                                               data-toggle="modal" class="fas fa-edit text-primary"></i>
                                        </big>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </s:iterator>
                </div>
            </s:else>
            <!--FIN DEL APARTADO DE MARCAS-->
        </div>
    </div>
</div>
<!--FIN DEL CONTENIDO DE LA PÁGINA-->

<!--INICIO MODAL DE REGISTRO MARCA-->
<div class="modal fade" id="addBrand" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0">
            <form action="<%=context%>/addBrand" method="post">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-plus text-right"></i> Registrar marca</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="bName">Nombre de la marca <span class="text-danger">*</span></label>
                            <input type="text" id="bName" name="bName" placeholder="Ej. Nike"
                                   class="form-control" autocomplete="off" required>
                        </div>
                        <div class="form-group">
                            <label for="bImageUrl">Url del logo de la marca <span class="text-danger">*</span></label>
                            <input type="text" id="bImageUrl" name="bImageUrl" placeholder="Dirección web del logotipo"
                                   class="form-control" autocomplete="off" required>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--FIN MODAL DE REGISTRO-->

<!--INICIO MODAL DE REGISTRO CATEGORÍA-->
<div class="modal fade" id="addCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content border-0">
            <form action="<%=context%>/addCategory" method="post">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-plus text-right"></i> Registrar categoría</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="cName">Nombre de la categoría <span class="text-danger">*</span></label>
                                    <input type="text" id="cName" name="cName" placeholder="Ej. Electrodomésticos"
                                           class="form-control" autocomplete="off" required>
                                </div>
                                <div class="form-group">
                                    <label for="cDescription">Descripción de la categoría</label>
                                    <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                                              name="cDescription" id="cDescription" class="form-control" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="cIconName">Nombre del ícono de la categoría <span class="text-danger text-justify">*</span></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">fas fa-</span>
                                        </div>
                                        <input ng-model="cIconName" type="text" id="cIconName" name="cIconName" placeholder="Nombre del ícono"
                                               class="form-control" autocomplete="off" required>
                                    </div>
                                    <small class="text-muted"><strong>NOTA:</strong> El nombre del icono lo puedes sacar de su sitio web <a
                                            href="https://fontawesome.com/v6/search" target="_blank">Font Awesome v6</a></small>
                                </div>
                                <div class="form-group">
                                    <label>Visualizador del ícono:</label>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--FIN MODAL DE REGISTRO-->

<!--INICIO MODAL DE MODIFICACIÓN MARCA-->
<div class="modal fade" id="modifyBrand" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content border-0">
            <form action="<%=context%>/updateBrand">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-edit text-right"></i> Modificar datos de la marca</h3>
                    </div>
                    <div class="card-body">
                        <input type="text" hidden ng-model="uBrId" id="uBrId" name="uBrId" />
                        <div class="form-group">
                            <label for="uBrName">Nombre de la marca <span class="text-danger">*</span></label>
                            <input type="text" ng-model="uBrName" id="uBrName" name="uBrName" placeholder="Ej. Nike"
                                   class="form-control" autocomplete="off" required>
                        </div>
                        <div class="form-group">
                            <label for="uBrImageUrl">Url del logo de la marca <span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="text" ng-model="uBrImageUrl" id="uBrImageUrl" name="uBrImageUrl" placeholder="Dirección web del logotipo"
                                       class="form-control" autocomplete="off" required>
                                <div class="input-group-append">
                                    <button type="button" ng-click="clearUrl()" title="Borrar Campo" class="btn btn-dark"><span class="fas fa-eraser"></span></button>
                                </div>
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

<!--INICIO MODAL DE MODIFICACIÓN DE CATEGORÍA-->
<div class="modal fade" id="modifyCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content border-0">
            <form action="<%=context%>/updateCategory">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-edit text-right"></i> Modificar datos de la categoría</h3>
                    </div>
                    <div class="card-body">
                        <input type="text" hidden ng-model="uId" id="uId" name="uId" />
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="uName">Nombre de la categoría <span class="text-danger">*</span></label>
                                    <input type="text" ng-model="uName" id="uName" name="uName" placeholder="Ej. Electrodomésticos"
                                           class="form-control" autocomplete="off" required>
                                </div>
                                <div class="form-group">
                                    <label for="uDescription">Descripción de la categoría</label>
                                    <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;" ng-model="uDescription" name="uDescription" id="uDescription" class="form-control" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="uIconName">Nombre del ícono de la categoría <span class="text-danger text-justify">*</span></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">fas fa-</span>
                                        </div>
                                        <input type="text" ng-model="uIconName" id="uIconName" name="uIconName" placeholder="Nombre del ícono"
                                               class="form-control" autocomplete="off" required>
                                    </div>
                                    <small class="text-muted"><strong>NOTA:</strong> El nombre del icono lo puedes sacar de su sitio web <a
                                            href="https://fontawesome.com/v6/search" target="_blank">Font Awesome v6</a></small>
                                </div>
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

<!--INICIO MODAL ELIMINACIÓN MARCA-->
<div class="modal fade" id="removeBrand" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0">
            <form action="<%=context%>/removeBrand" method="post">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-triangle-exclamation"></i> Atención</h3>
                    </div>
                    <div class="card-body">
                        <strong>Esta acción es irreversible</strong> ¿Está seguro que desea eliminar esta marca?
                    </div>
                    <div class="card-footer text-right">
                        <input type="text" hidden id="bId" name="bId">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--FIN MODAL DE ELIMINACIÓN-->

<!--INICIO MODAL ELIMINACIÓN CATEGORÍA-->
<div class="modal fade" id="removeCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-0">
            <form action="<%=context%>/removeCategory" method="post">
                <div class="card border-0">
                    <div class="card-header pb-1 bg-dark text-white">
                        <h3><i class="fas fa-triangle-exclamation"></i> Atención</h3>
                    </div>
                    <div class="card-body">
                        <strong>Esta acción es irreversible</strong> ¿Está seguro que desea eliminar esta categoría?
                    </div>
                    <div class="card-footer text-right">
                        <input type="text" hidden id="cId" name="cId">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--FIN MODAL DE ELIMINACIÓN-->
</body>

<script src="<%=context%>/js/functions.js"></script>
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