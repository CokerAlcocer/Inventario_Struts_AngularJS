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
    <!--FONTAWESOME ICONS 6.1.1-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Marcas y categorías</title>
</head>

<body style="font-family: Arial; overflow: hidden;"  ng-controller="categoryController">
<!--INICIO DEL TAB DE NAVEGACIÓN-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="<s:url action="index" />">Gestor de Inventarios</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="<s:url action="index" />"><i class="fas fa-boxes-stacked"></i>
                Productos</a>
            <a class="nav-item nav-link active" href="<s:url action="cb" />"><i class="fas fa-tag"></i> Marcas y
                categorías</a>
        </div>
    </div>
</nav>
<!--FIN DEL TAB DE NAVEGACIÓN-->

<!--INICIO DEL CONTENIDO DE LA PÁGINA-->
<div class="block m-4">
    <div class="row">
        <div class="col-12 col-lg-8 px-lg-4">
            <!--INICIO DEL APARTADO DE MARCAS-->
            <div class="row d-flex align-items-start">
                <div class="col-6">
                    <h1>Marcas</h1>
                </div>
                <div class="col-6 text-right">
                    <button data-target="#addModal" data-toggle="modal" class="btn btn-outline-success"><i
                            class="fas fa-plus"></i>
                        Añadir</button>
                </div>
            </div>
            <hr class="mt-0">
            <div class="row">
                <div class="col-4">
                    <div class="card mb-4 shadow">
                        <img class="px-3 mt-2 mb-0" style="width: 100%; height: 100px; object-fit: contain;"
                             src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW3Fo_F49duftR_cxgdyo9eEoykLjlZy7txKomKRnckcxtdPtBYH1jk_KqTCw-PE0gLTk&usqp=CAU"
                             alt="">
                        <div class="card-body mt-0 text-center">
                            <div class="col-12 mt-0">
                                <big>
                                    <i role="button" title="Eliminar Producto" data-target="#removeModal"
                                       data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                                    <i role="button" title="Editar Datos" data-target="#modifyModal"
                                       data-toggle="modal" class="fas fa-edit mr-3 text-primary"></i>
                                    <i role="button" title="Mas Información" data-toggle="modal"
                                       data-target="#addQuantityModal" class="fas fa-info-circle text-primary"></i>
                                </big>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4 shadow">
                        <img class="px-3 mt-2 mb-0" style="width: 100%; height: 100px; object-fit: contain;"
                             src="https://mma.prnewswire.com/media/1320682/October_27___Rubik_s_Logo_3.jpg?p=facebook"
                             alt="">
                        <div class="card-body mt-0 text-center">
                            <div class="col-12 mt-0">
                                <big>
                                    <i role="button" title="Eliminar Producto" data-target="#removeModal"
                                       data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                                    <i role="button" title="Editar Datos" data-target="#modifyModal"
                                       data-toggle="modal" class="fas fa-edit mr-3 text-primary"></i>
                                    <i role="button" title="Mas Información" data-toggle="modal"
                                       data-target="#addQuantityModal" class="fas fa-info-circle text-primary"></i>
                                </big>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--FIN DEL APARTADO DE MARCAS-->
        </div>

        <div class="col-12 col-lg-4 px-lg-4">
            <!--INICIO DEL APARTADO DE CATEGORÍAS-->
            <div class="row d-flex align-items-start">
                <div class="col-6">
                    <h1>Categorías</h1>
                </div>
                <div class="col-6 text-right">
                    <button data-target="#addCategory" data-toggle="modal" class="btn btn-outline-success"><i
                            class="fas fa-plus"></i>
                        Añadir</button>
                </div>
            </div>
            <hr class="mt-0">
            <div style="height: 75%; overflow: auto;">
                <div class="block">
                    <!--INICIO DE LA TARJETA DE CATEGORÍA-->
                    <s:iterator value="categories" >
                        <div class="card mb-4 shadow">
                            <div class="card-body">
                                <h3 class="mt-0"><i class="fas fa-<s:property value="iconName" />"></i> <s:property value="name" /></h3>
                                <div class="row mb-0">
                                    <div class="col-8">
                                        <span><s:property value="description" /></span>
                                    </div>
                                    <div class="col-4 text-right">
                                        <big>
                                            <i role="button" onclick="setIdOnModal(<s:property value="id" />)" title="Eliminar Producto" data-target="#removeCategory"
                                               data-toggle="modal" class="fas fa-trash mr-3 text-danger"></i>
                                            <i role="button" ng-click="getInfo(<s:property value="id" />)" title="Editar Datos" data-target="#modifyCategory"
                                               data-toggle="modal" class="fas fa-edit text-primary"></i>
                                        </big>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </s:iterator>
                </div>
            </div>
            <!--FIN DEL APARTADO DE MARCAS-->
        </div>
    </div>
</div>
<!--FIN DEL CONTENIDO DE LA PÁGINA-->

<!--INICIO MODAL DE REGISTRO CATEGORÍA-->
<div class="modal fade" id="addCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content" style="border: none !important;">
            <form action="<%=context%>/addCategory" method="post">
                <div class="card">
                    <div class="card-body">
                        <h3><i class="fas fa-plus text-right"></i> Registrar categoría</h3>
                        <hr>
                        <form action="">
                            <div class="row">
                                <div class="form-group col-12 col-lg-6">
                                    <label for="cName">Nombre de la categoría <span class="text-danger">*</span></label>
                                    <input type="text" id="cName" name="cName" placeholder="Ej. Electrodomésticos"
                                           class="form-control" autocomplete="off" required>
                                </div>
                                <div class="form-group col-12 col-lg-6">
                                    <label for="cIconName">Nombre del ícono de la categoría <span class="text-danger text-justify">*</span></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">fas fa-</span>
                                        </div>
                                        <input type="text" id="cIconName" name="cIconName" placeholder="Nombre del ícono"
                                               class="form-control" autocomplete="off" required>
                                    </div>
                                    <small class="text-muted"><strong>NOTA:</strong> El nombre del icono lo puedes sacar de su sitio web <a
                                            href="https://fontawesome.com/v6/search" target="_blank">Font Awesome v6</a></small>
                                </div>
                                <div class="form-group col-12">
                                    <label for="cDescription">Descripción de la categoría</label>
                                    <input type="text" id="cDescription" name="cDescription" placeholder="Escriba algo breve..."
                                           class="form-control" autocomplete="off" required>
                                </div>
                            </div>
                            <hr>
                            <div class="block text-right">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--FIN MODAL DE REGISTRO-->

<!--INICIO MODAL DE MODIFICACIÓN DE CATEGORÍA-->
<div class="modal fade" id="modifyCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-edit text-right"></i> Modificar datos del producto</h3>
                    <hr>
                    <form action="<%=context%>/updateCategory">
                        <input type="text" ng-model="uId" id="uId" name="uId" />
                        <div class="row">
                            <div class="form-group col-12 col-lg-6">
                                <label for="uName">Nombre de la categoría <span class="text-danger">*</span></label>
                                <input type="text" ng-model="uName" id="uName" name="uName" placeholder="Ej. Electrodomésticos"
                                       class="form-control" autocomplete="off" required>
                            </div>
                            <div class="form-group col-12 col-lg-6">
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
                            <div class="form-group col-12">
                                <label for="uDescription">Descripción de la categoría</label>
                                <input type="text" ng-model="uDescription" id="uDescription" name="uDescription" placeholder="Escriba algo breve..."
                                       class="form-control" autocomplete="off" required>
                            </div>
                        </div>
                        <hr>
                        <div class="block text-right">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Descartar</button>
                            <button type="submit" class="btn btn-primary">Modificar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--FIN MODAL DE MODIFICACIÓN-->

<!--INICIO MODAL ELIMINACIÓN-->
<div class="modal fade" id="removeCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-triangle-exclamation"></i> Atención</h3>
                    <hr>
                    <form action="">
                        Esta acción es irreversible ¿Está seguro que desea eliminar esta categoría?
                        <hr>
                        <div class="block text-right">
                            <form action="<%=context%>/removeCategory" method="post">
                                <input type="hidden" id="cId" name="cId">
                                <button type="submit" class="btn btn-danger">Eliminar</button>
                            </form>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
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