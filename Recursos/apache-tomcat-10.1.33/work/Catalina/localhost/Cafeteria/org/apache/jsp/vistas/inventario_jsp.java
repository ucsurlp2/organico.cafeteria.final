/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.33
 * Generated at: 2024-11-29 23:01:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.vistas;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class inventario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
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

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Inventario - OrgÃ¡nico CafeterÃ­a</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"barra_lateral.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"inventario.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- Barra lateral fija con el menÃº principal -->\r\n");
      out.write("    <div class=\"barra-lateral\">\r\n");
      out.write("        <h2>ORGÃNICO CAFETERÃA</h2>\r\n");
      out.write("        <!-- Opciones del menÃº -->\r\n");
      out.write("        <a href=\"index.html\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-home\"></i>\r\n");
      out.write("            <span>Inicio</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"ventas.html\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-shopping-cart\"></i>\r\n");
      out.write("            <span>Venta</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"inventario.html\" class=\"opcion-menu activo\">\r\n");
      out.write("            <i class=\"fa fa-boxes\"></i>\r\n");
      out.write("            <span>Inventario</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"#\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-chart-bar\"></i>\r\n");
      out.write("            <span>Reportes</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"#\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-cogs\"></i>\r\n");
      out.write("            <span>ConfiguraciÃ³n</span>\r\n");
      out.write("        </a>\r\n");
      out.write("\r\n");
      out.write("        <!-- Botones de acciones ubicados al final -->\r\n");
      out.write("        <div class=\"acciones\">\r\n");
      out.write("            <form action=\"apertura-caja.html\" method=\"get\">\r\n");
      out.write("                <button class=\"boton apertura-caja\">Apertura y cierre de caja</button>\r\n");
      out.write("            </form>\r\n");
      out.write("            <button class=\"boton salir\"><i class=\"fa fa-sign-out-alt\"></i>Salir</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Contenido principal -->\r\n");
      out.write("    <div class=\"contenido-principal\">\r\n");
      out.write("        <h1>INVENTARIO</h1>\r\n");
      out.write("\r\n");
      out.write("        <!-- Resumen de inventario -->\r\n");
      out.write("        <div class=\"resumen-inventario\">\r\n");
      out.write("            <div class=\"tarjeta-inventario\">\r\n");
      out.write("                <i class=\"fa fa-dollar-sign\"></i>\r\n");
      out.write("                <h2>12,313.40</h2>\r\n");
      out.write("                <p>Valor de inventario</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"tarjeta-inventario\">\r\n");
      out.write("                <i class=\"fa fa-box\"></i>\r\n");
      out.write("                <h2>65</h2>\r\n");
      out.write("                <p>ArtÃ­culos de inventario</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"tarjeta-inventario\">\r\n");
      out.write("                <i class=\"fa fa-user\"></i>\r\n");
      out.write("                <h2>16</h2>\r\n");
      out.write("                <p>Proveedores</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <h2>Lista de productos</h2>\r\n");
      out.write("        <!-- Lista de productos -->\r\n");
      out.write("        <div class=\"lista-productos\">\r\n");
      out.write("            <div class=\"barra-busqueda\">\r\n");
      out.write("                <div class=\"campo-lupa\">\r\n");
      out.write("                    <i class=\"fa fa-search\"></i>\r\n");
      out.write("                    <input type=\"text\" placeholder=\"Buscar productos...\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <button>Agrupar por: Sin filtro aplicado</button>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <table>\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>ID</th>\r\n");
      out.write("                        <th>CategorÃ­a</th>\r\n");
      out.write("                        <th>Nombre</th>\r\n");
      out.write("                        <th>DescripciÃ³n</th>\r\n");
      out.write("                        <th>Stock disp</th>\r\n");
      out.write("                        <th>Venta</th>\r\n");
      out.write("                        <th>Stock real</th>\r\n");
      out.write("                        <th>Precio</th>\r\n");
      out.write("                        <th>Acciones</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>01</td>\r\n");
      out.write("                        <td>Bebidas calientes</td>\r\n");
      out.write("                        <td>Espresso</td>\r\n");
      out.write("                        <td>CafÃ© espresso fuerte, preparado con granos 100% arÃ¡bica.</td>\r\n");
      out.write("                        <td>16</td>\r\n");
      out.write("                        <td>10</td>\r\n");
      out.write("                        <td>6</td>\r\n");
      out.write("                        <td>8.00</td>\r\n");
      out.write("                        <td>\r\n");
      out.write("                            <a href=\"#\" class=\"editar\">Editar</a> | <a href=\"#\" class=\"eliminar\">Eliminar</a>\r\n");
      out.write("                        </td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <!-- Repite mÃ¡s filas segÃºn sea necesario -->\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Opciones de acciÃ³n -->\r\n");
      out.write("        <div class=\"acciones-inventario\">\r\n");
      out.write("            <button class=\"boton agregar-producto\">Agregar Nuevo Producto</button>\r\n");
      out.write("            <button class=\"boton registrar-compra\">Registrar Nueva Compra</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
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
