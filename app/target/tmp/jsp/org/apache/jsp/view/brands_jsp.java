/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.7.v20170914
 * Generated at: 2022-05-15 06:19:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class brands_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/Users/alcoker/.m2/repository/org/apache/struts/struts2-core/2.5.14.1/struts2-core-2.5.14.1.jar", Long.valueOf(1652240667733L));
    _jspx_dependants.put("jar:file:/Users/alcoker/.m2/repository/org/apache/struts/struts2-core/2.5.14.1/struts2-core-2.5.14.1.jar!/META-INF/struts-tags.tld", Long.valueOf(1511966294000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"es\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <!--BOOTSTRAP 4.6-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\"\n");
      out.write("          integrity=\"sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn\" crossorigin=\"anonymous\">\n");
      out.write("    <!--FONTAWESOME ICONS 6.1.1-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\"\n");
      out.write("          integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\"\n");
      out.write("          crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("    <title>Marcas y categorías</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"font-family: Arial;\">\n");
      out.write("<!--INICIO DEL TAB DE NAVEGACIÓN-->\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"../index.jsp\">Gestor de Inventarios</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\"\n");
      out.write("            aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("        <div class=\"navbar-nav\">\n");
      out.write("            <a class=\"nav-item nav-link\" href=\"../index.jsp\"><i class=\"fas fa-boxes-stacked\"></i>\n");
      out.write("                Productos</a>\n");
      out.write("            <a class=\"nav-item nav-link active\" href=\"./brands.jsp\"><i class=\"fas fa-tag\"></i> Marcas y\n");
      out.write("                categorías</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</nav>\n");
      out.write("<!--FIN DEL TAB DE NAVEGACIÓN-->\n");
      out.write("\n");
      out.write("<!--INICIO DEL CONTENIDO DE LA PÁGINA-->\n");
      out.write("<div class=\"block m-4\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-12 col-lg-6 px-lg-4\">\n");
      out.write("            <!--INICIO DEL APARTADO DE MARCAS-->\n");
      out.write("            <div class=\"row d-flex align-items-start\">\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <h1>Marcas</h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-6 text-right\">\n");
      out.write("                    <button data-target=\"#addModal\" data-toggle=\"modal\" class=\"btn btn-outline-success\"><i\n");
      out.write("                            class=\"fas fa-plus\"></i>\n");
      out.write("                        Añadir</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <hr class=\"mt-0\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <div class=\"card mb-4 shadow\">\n");
      out.write("                        <img class=\"px-3 mt-2 mb-0\" style=\"width: 100%; height: 100px; object-fit: contain;\"\n");
      out.write("                             src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW3Fo_F49duftR_cxgdyo9eEoykLjlZy7txKomKRnckcxtdPtBYH1jk_KqTCw-PE0gLTk&usqp=CAU\"\n");
      out.write("                             alt=\"\">\n");
      out.write("                        <div class=\"card-body mt-0 text-center\">\n");
      out.write("                            <div class=\"col-12 mt-0\">\n");
      out.write("                                <big>\n");
      out.write("                                    <i role=\"button\" title=\"Eliminar Producto\" data-target=\"#removeModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-trash mr-3 text-danger\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Editar Datos\" data-target=\"#modifyModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-edit mr-3 text-primary\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Mas Información\" data-toggle=\"modal\"\n");
      out.write("                                       data-target=\"#addQuantityModal\" class=\"fas fa-info-circle text-primary\"></i>\n");
      out.write("                                </big>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <div class=\"card mb-4 shadow\">\n");
      out.write("                        <img class=\"px-3 mt-2 mb-0\" style=\"width: 100%; height: 100px; object-fit: contain;\"\n");
      out.write("                             src=\"https://mma.prnewswire.com/media/1320682/October_27___Rubik_s_Logo_3.jpg?p=facebook\"\n");
      out.write("                             alt=\"\">\n");
      out.write("                        <div class=\"card-body mt-0 text-center\">\n");
      out.write("                            <div class=\"col-12 mt-0\">\n");
      out.write("                                <big>\n");
      out.write("                                    <i role=\"button\" title=\"Eliminar Producto\" data-target=\"#removeModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-trash mr-3 text-danger\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Editar Datos\" data-target=\"#modifyModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-edit mr-3 text-primary\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Mas Información\" data-toggle=\"modal\"\n");
      out.write("                                       data-target=\"#addQuantityModal\" class=\"fas fa-info-circle text-primary\"></i>\n");
      out.write("                                </big>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--FIN DEL APARTADO DE MARCAS-->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-12 col-lg-6 px-lg-4\">\n");
      out.write("            <!--INICIO DEL APARTADO DE MARCAS-->\n");
      out.write("            <div class=\"row d-flex align-items-start\">\n");
      out.write("                <div class=\"col-6\">\n");
      out.write("                    <h1>Categorías</h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-6 text-right\">\n");
      out.write("                    <button data-target=\"#addModal\" data-toggle=\"modal\" class=\"btn btn-outline-success\"><i\n");
      out.write("                            class=\"fas fa-plus\"></i>\n");
      out.write("                        Añadir</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <hr class=\"mt-0\">\n");
      out.write("            <div class=\"block\">\n");
      out.write("                <div class=\"card mb-4 shadow\">\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-8\">\n");
      out.write("                                <span>Nombre de la categoría</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4 text-right\">\n");
      out.write("                                <big>\n");
      out.write("                                    <i role=\"button\" title=\"Eliminar Producto\" data-target=\"#removeModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-trash mr-3 text-danger\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Editar Datos\" data-target=\"#modifyModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-edit mr-3 text-primary\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Mas Información\" data-toggle=\"modal\"\n");
      out.write("                                       data-target=\"#addQuantityModal\" class=\"fas fa-info-circle text-primary\"></i>\n");
      out.write("                                </big>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"card mb-4 shadow\">\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-8\">\n");
      out.write("                                <span>Nombre de la categoría</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-4 text-right\">\n");
      out.write("                                <big>\n");
      out.write("                                    <i role=\"button\" title=\"Eliminar Producto\" data-target=\"#removeModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-trash mr-3 text-danger\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Editar Datos\" data-target=\"#modifyModal\"\n");
      out.write("                                       data-toggle=\"modal\" class=\"fas fa-edit mr-3 text-primary\"></i>\n");
      out.write("                                    <i role=\"button\" title=\"Mas Información\" data-toggle=\"modal\"\n");
      out.write("                                       data-target=\"#addQuantityModal\" class=\"fas fa-info-circle text-primary\"></i>\n");
      out.write("                                </big>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--FIN DEL APARTADO DE MARCAS-->\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN DEL CONTENIDO DE LA PÁGINA-->\n");
      out.write("\n");
      out.write("<!--INICIO MODAL DE REGISTRO-->\n");
      out.write("<div class=\"modal fade\" id=\"addModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("        <div class=\"modal-content\" style=\"border: none !important;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h3><i class=\"fas fa-plus text-right\"></i> Registrar producto</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"name\">Nombre del producto <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"text\" id=\"name\" name=\"name\" placeholder=\"Ej. Cinta americana\"\n");
      out.write("                                       class=\"form-control\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-6\">\n");
      out.write("                                <label for=\"price\">Precio <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"number\" id=\"price\" name=\"price\" placeholder=\"Min. $1\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-6\">\n");
      out.write("                                <label for=\"quantity\">Ejemplares <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"number\" id=\"quantity\" name=\"quantity\" placeholder=\"Min. 1 unidad\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"url\">Url de la imagen <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"text\" id=\"url\" name=\"url\" placeholder=\"Ej.http://dominio.com\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"category\">Categoría <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <select class=\"form-control\" name=\"category\" id=\"category\">\n");
      out.write("                                    <option selected disabled>Seleccione una categoría</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"description\">Descripción del producto</label>\n");
      out.write("                                <textarea placeholder=\"Escribe algo... (Opcional)\" style=\"resize: none;\"\n");
      out.write("                                          name=\"description\" id=\"description\" class=\"form-control\" rows=\"5\"></textarea>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <hr>\n");
      out.write("                        <div class=\"block text-right\">\n");
      out.write("                            <button class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                            <button class=\"btn btn-primary\">Guardar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN MODAL DE REGISTRO-->\n");
      out.write("\n");
      out.write("<!--INICIO MODAL DE MODIFICACIÓN-->\n");
      out.write("<div class=\"modal fade\" id=\"modifyModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("        <div class=\"modal-content\" style=\"border: none !important;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h3><i class=\"fas fa-edit text-right\"></i> Modificar datos del producto</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"name\">Nombre del producto <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"text\" id=\"name\" name=\"name\" placeholder=\"Ej. Cinta americana\"\n");
      out.write("                                       class=\"form-control\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-6\">\n");
      out.write("                                <label for=\"price\">Precio <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"number\" id=\"price\" name=\"price\" placeholder=\"Min. $1\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-6\">\n");
      out.write("                                <label for=\"quantity\">Ejemplares <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"number\" id=\"quantity\" name=\"quantity\" placeholder=\"Min. 1 unidad\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"url\">Url de la imagen <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <input type=\"text\" id=\"url\" name=\"url\" placeholder=\"Ej.http://dominio.com\"\n");
      out.write("                                       class=\"form-control\" min=\"1\" autocomplete=\"off\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"category\">Categoría <span class=\"text-danger\">*</span></label>\n");
      out.write("                                <select class=\"form-control\" name=\"category\" id=\"category\">\n");
      out.write("                                    <option selected disabled>Seleccione una categoría</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-12\">\n");
      out.write("                                <label for=\"description\">Descripción del producto</label>\n");
      out.write("                                <textarea placeholder=\"Escribe algo... (Opcional)\" style=\"resize: none;\"\n");
      out.write("                                          name=\"description\" id=\"description\" class=\"form-control\" rows=\"5\"></textarea>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <hr>\n");
      out.write("                        <div class=\"block text-right\">\n");
      out.write("                            <button class=\"btn btn-secondary\" data-dismiss=\"modal\">Descartar</button>\n");
      out.write("                            <button class=\"btn btn-primary\">Modificar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN MODAL DE MODIFICACIÓN-->\n");
      out.write("\n");
      out.write("<!--INICIO MODAL DE AGREGACIÓN-->\n");
      out.write("<div class=\"modal fade\" id=\"addQuantityModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("        <div class=\"modal-content\" style=\"border: none !important;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h3><i class=\"fas fa-plus text-right\"></i> Añadir ejemplares</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-12 mb-3\">\n");
      out.write("                                Nombre del producto:\n");
      out.write("                                <h4>Cubo Rubik 3x3 - Fibra de Carbono</h4>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-12\">\n");
      out.write("                                <p class=\"mb-2\">Total de unidades:</p>\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <input type=\"number\" class=\"form-control text-center\" disabled value=\"300\"\n");
      out.write("                                           name=\"\" id=\"\">\n");
      out.write("                                    <div class=\"input-group-prepend\">\n");
      out.write("                                        <span class=\"input-group-text\"><i class=\"fas fa-plus\"></i></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <input type=\"number\" placeholder=\"Unidades a agregar\"\n");
      out.write("                                           class=\"form-control text-center\" pattern=\"[0-9]+\" name=\"\" id=\"\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <hr>\n");
      out.write("                        <div class=\"block text-right\">\n");
      out.write("                            <button class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                            <button class=\"btn btn-primary\">Agregar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN MODAL DE AGREGACIÓN-->\n");
      out.write("\n");
      out.write("<!--INICIO MODAL DE INFORMACIÓN-->\n");
      out.write("<div class=\"modal fade\" id=\"infoModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("        <div class=\"modal-content\" style=\"border: none !important;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h3><i class=\"fas fa-info-circle\"></i> Información del producto</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        <p>\n");
      out.write("                            <strong>Marca: </strong>Rubik's Cubes\n");
      out.write("                        </p>\n");
      out.write("                        <p class=\"text-justify\">\n");
      out.write("                            <strong>Descripción del producto:</strong> Lorem ipsum dolor sit amet consectetur\n");
      out.write("                            adipisicing elit. Consectetur omnis iusto dolores tempore. Incidunt a tempora repellat\n");
      out.write("                            iusto velit amet beatae eos cupiditate, illum, quos sunt ducimus, minima cumque quasi!\n");
      out.write("                        </p>\n");
      out.write("                        <hr>\n");
      out.write("                        <div class=\"block text-right\">\n");
      out.write("                            <button class=\"btn btn-secondary\" data-dismiss=\"modal\">Cerrar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN MODAL DE INFORMACIÓN-->\n");
      out.write("\n");
      out.write("<!--INICIO MODAL ELIMINACIÓN-->\n");
      out.write("<div class=\"modal fade\" id=\"removeModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("        <div class=\"modal-content\" style=\"border: none !important;\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h3><i class=\"fas fa-triangle-exclamation\"></i> Atención</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        Esta acción es irreversible ¿Está seguro que desea realizar esta acción?\n");
      out.write("                        <hr>\n");
      out.write("                        <div class=\"block text-right\">\n");
      out.write("                            <button class=\"btn btn-danger\">Eliminar</button>\n");
      out.write("                            <button class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--FIN MODAL DE ELIMINACIÓN-->\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\n");
      out.write("        integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\"\n");
      out.write("        integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\"\n");
      out.write("        integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
