<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--BOOTSTRAP 4.6-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <!--FONTAWESOME ICONS 6.1.1-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Marcas y categorías</title>
</head>

<body style="font-family: Arial;">
<!--INICIO DEL TAB DE NAVEGACIÓN-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="../index.jsp">Gestor de Inventarios</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="../index.jsp"><i class="fas fa-boxes-stacked"></i>
                Productos</a>
            <a class="nav-item nav-link active" href="./brands.jsp"><i class="fas fa-tag"></i> Marcas y
                categorías</a>
        </div>
    </div>
</nav>
<!--FIN DEL TAB DE NAVEGACIÓN-->

<!--INICIO DEL CONTENIDO DE LA PÁGINA-->
<div class="block m-4">
    <div class="row">
        <div class="col-12 col-lg-6 px-lg-4">
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
                <div class="col-6">
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

                <div class="col-6">
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

        <div class="col-12 col-lg-6 px-lg-4">
            <!--INICIO DEL APARTADO DE MARCAS-->
            <div class="row d-flex align-items-start">
                <div class="col-6">
                    <h1>Categorías</h1>
                </div>
                <div class="col-6 text-right">
                    <button data-target="#addModal" data-toggle="modal" class="btn btn-outline-success"><i
                            class="fas fa-plus"></i>
                        Añadir</button>
                </div>
            </div>
            <hr class="mt-0">
            <div class="block">
                <div class="card mb-4 shadow">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <span>Nombre de la categoría</span>
                            </div>
                            <div class="col-4 text-right">
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

                <div class="card mb-4 shadow">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <span>Nombre de la categoría</span>
                            </div>
                            <div class="col-4 text-right">
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
    </div>
</div>
<!--FIN DEL CONTENIDO DE LA PÁGINA-->

<!--INICIO MODAL DE REGISTRO-->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-plus text-right"></i> Registrar producto</h3>
                    <hr>
                    <form action="">
                        <div class="row">
                            <div class="form-group col-12">
                                <label for="name">Nombre del producto <span class="text-danger">*</span></label>
                                <input type="text" id="name" name="name" placeholder="Ej. Cinta americana"
                                       class="form-control" autocomplete="off" required>
                            </div>
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
                            <div class="form-group col-12">
                                <label for="url">Url de la imagen <span class="text-danger">*</span></label>
                                <input type="text" id="url" name="url" placeholder="Ej.http://dominio.com"
                                       class="form-control" min="1" autocomplete="off" required>
                            </div>
                            <div class="form-group col-12">
                                <label for="category">Categoría <span class="text-danger">*</span></label>
                                <select class="form-control" name="category" id="category">
                                    <option selected disabled>Seleccione una categoría</option>
                                </select>
                            </div>
                            <div class="form-group col-12">
                                <label for="description">Descripción del producto</label>
                                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                                          name="description" id="description" class="form-control" rows="5"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="block text-right">
                            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--FIN MODAL DE REGISTRO-->

<!--INICIO MODAL DE MODIFICACIÓN-->
<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-edit text-right"></i> Modificar datos del producto</h3>
                    <hr>
                    <form action="">
                        <div class="row">
                            <div class="form-group col-12">
                                <label for="name">Nombre del producto <span class="text-danger">*</span></label>
                                <input type="text" id="name" name="name" placeholder="Ej. Cinta americana"
                                       class="form-control" autocomplete="off" required>
                            </div>
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
                            <div class="form-group col-12">
                                <label for="url">Url de la imagen <span class="text-danger">*</span></label>
                                <input type="text" id="url" name="url" placeholder="Ej.http://dominio.com"
                                       class="form-control" min="1" autocomplete="off" required>
                            </div>
                            <div class="form-group col-12">
                                <label for="category">Categoría <span class="text-danger">*</span></label>
                                <select class="form-control" name="category" id="category">
                                    <option selected disabled>Seleccione una categoría</option>
                                </select>
                            </div>
                            <div class="form-group col-12">
                                <label for="description">Descripción del producto</label>
                                <textarea placeholder="Escribe algo... (Opcional)" style="resize: none;"
                                          name="description" id="description" class="form-control" rows="5"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="block text-right">
                            <button class="btn btn-secondary" data-dismiss="modal">Descartar</button>
                            <button class="btn btn-primary">Modificar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--FIN MODAL DE MODIFICACIÓN-->

<!--INICIO MODAL DE AGREGACIÓN-->
<div class="modal fade" id="addQuantityModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-plus text-right"></i> Añadir ejemplares</h3>
                    <hr>
                    <form action="">
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
                        <hr>
                        <div class="block text-right">
                            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button class="btn btn-primary">Agregar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--FIN MODAL DE AGREGACIÓN-->

<!--INICIO MODAL DE INFORMACIÓN-->
<div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-info-circle"></i> Información del producto</h3>
                    <hr>
                    <form action="">
                        <p>
                            <strong>Marca: </strong>Rubik's Cubes
                        </p>
                        <p class="text-justify">
                            <strong>Descripción del producto:</strong> Lorem ipsum dolor sit amet consectetur
                            adipisicing elit. Consectetur omnis iusto dolores tempore. Incidunt a tempora repellat
                            iusto velit amet beatae eos cupiditate, illum, quos sunt ducimus, minima cumque quasi!
                        </p>
                        <hr>
                        <div class="block text-right">
                            <button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--FIN MODAL DE INFORMACIÓN-->

<!--INICIO MODAL ELIMINACIÓN-->
<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border: none !important;">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fas fa-triangle-exclamation"></i> Atención</h3>
                    <hr>
                    <form action="">
                        Esta acción es irreversible ¿Está seguro que desea realizar esta acción?
                        <hr>
                        <div class="block text-right">
                            <button class="btn btn-danger">Eliminar</button>
                            <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
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