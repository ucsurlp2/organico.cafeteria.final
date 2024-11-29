/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.33
 * Generated at: 2024-11-29 23:01:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.vistas;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class config_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>ConfiguraciÃ³n</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"config.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"barra_lateral.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"panel_principal.css\">\r\n");
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
      out.write("        <a href=\"inventario.html\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-boxes\"></i>\r\n");
      out.write("            <span>Inventario</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"#\" class=\"opcion-menu\">\r\n");
      out.write("            <i class=\"fa fa-chart-bar\"></i>\r\n");
      out.write("            <span>Reportes</span>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a href=\"config.html\" class=\"opcion-menu\">\r\n");
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
      out.write("    <div class=\"contenido-principal\">\r\n");
      out.write("            <h1>ConfiguraciÃ³n</h1>\r\n");
      out.write("\r\n");
      out.write("            <section class=\"mi-usuario\">\r\n");
      out.write("                <h2>Mi Usuario</h2>\r\n");
      out.write("                <form>\r\n");
      out.write("                    <label>Nombres completos</label>\r\n");
      out.write("                    <input type=\"text\" value=\"Roberto Paolo\">\r\n");
      out.write("                    \r\n");
      out.write("                    <label>Apellidos</label>\r\n");
      out.write("                    <input type=\"text\" value=\"CrisÃ³stomo Berrocal\">\r\n");
      out.write("\r\n");
      out.write("                    <label>NÃºmero de documento de identidad</label>\r\n");
      out.write("                    <input type=\"text\" value=\"71776762\">\r\n");
      out.write("\r\n");
      out.write("                    <label>CÃ³digo de empleado</label>\r\n");
      out.write("                    <input type=\"text\" value=\"01\">\r\n");
      out.write("\r\n");
      out.write("                    <label>TelÃ©fono</label>\r\n");
      out.write("                    <input type=\"text\" value=\"934 401 034\">\r\n");
      out.write("\r\n");
      out.write("                    <label>Editar permisos</label>\r\n");
      out.write("                    <select>\r\n");
      out.write("                        <option>Administrador</option>\r\n");
      out.write("                        <option>Cajero</option>\r\n");
      out.write("                        <option>Barista</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </form>\r\n");
      out.write("            </section>\r\n");
      out.write("            <section class=\"usuarios\">\r\n");
      out.write("                <h2>Usuarios</h2>\r\n");
      out.write("                <table>\r\n");
      out.write("                    <thead>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>ID</th>\r\n");
      out.write("                            <th>Nombre</th>\r\n");
      out.write("                            <th>Rol</th>\r\n");
      out.write("                            <th>Ãltimo acceso</th>\r\n");
      out.write("                            <th>Editar</th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>1</td>\r\n");
      out.write("                            <td>Fredy Nolasco</td>\r\n");
      out.write("                            <td>Administrador</td>\r\n");
      out.write("                            <td>15/11/2024 | 21:53</td>\r\n");
      out.write("                            <td><button>Editar</button></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>2</td>\r\n");
      out.write("                            <td>Paolo CrisÃ³stomo</td>\r\n");
      out.write("                            <td>Cajero</td>\r\n");
      out.write("                            <td>15/11/2024 | 10:00</td>\r\n");
      out.write("                            <td><button>Editar</button></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>3</td>\r\n");
      out.write("                            <td>MarÃ­a Casasani</td>\r\n");
      out.write("                            <td>Barista</td>\r\n");
      out.write("                            <td>12/11/2024 | 12:00</td>\r\n");
      out.write("                            <td><button>Editar</button></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("            <section class=\"aperturas-cierres\">\r\n");
      out.write("                <h2>Aperturas y cierres de caja</h2>\r\n");
      out.write("                <table>\r\n");
      out.write("                    <thead>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>ID</th>\r\n");
      out.write("                            <th>Usuario Apertura</th>\r\n");
      out.write("                            <th>Monto Apertura</th>\r\n");
      out.write("                            <th>Monto Cierre</th>\r\n");
      out.write("                            <th>Comentarios</th>\r\n");
      out.write("                            <th>Usuario Cierre</th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>4</td>\r\n");
      out.write("                            <td>Fredy Nolasco</td>\r\n");
      out.write("                            <td>200.00</td>\r\n");
      out.write("                            <td>493.50</td>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                            <td>Paolo CrisÃ³stomo</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>3</td>\r\n");
      out.write("                            <td>Fredy Nolasco</td>\r\n");
      out.write("                            <td>200.00</td>\r\n");
      out.write("                            <td>493.50</td>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                            <td>Paolo CrisÃ³stomo</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </section>\r\n");
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