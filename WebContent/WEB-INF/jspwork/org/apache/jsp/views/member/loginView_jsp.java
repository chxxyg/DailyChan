/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.53
 * Generated at: 2020-04-14 02:59:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');


	String contextPath = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write(".login{\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    width: 400px;\r\n");
      out.write("    height: 630px; \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#tit{\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    font-size: 25px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin-top:60px;\r\n");
      out.write("   \r\n");
      out.write("}\r\n");
      out.write("#id{\r\n");
      out.write("    margin-top:40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#id, #pwd{\r\n");
      out.write("\r\n");
      out.write("    width:400px ;\r\n");
      out.write("    margin-left: 50px;\r\n");
      out.write("    height: 30px;\r\n");
      out.write("}\r\n");
      out.write("#loginBtn{\r\n");
      out.write("    width:400px ;\r\n");
      out.write("    margin-left: 50px;\r\n");
      out.write("    height: 40px;\r\n");
      out.write("    background-color: rgb(238, 98, 5);\r\n");
      out.write("    color: white;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("#idSaveCheck{\r\n");
      out.write("    margin-left: 50px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#joinup{\r\n");
      out.write("        width:400px ;\r\n");
      out.write("        margin-left: 50px;\r\n");
      out.write("        height: 40px;\r\n");
      out.write("        color: hsl(28, 100%, 50%);\r\n");
      out.write("        cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write(".bt_set{\r\n");
      out.write("\tmargin-left:70px;\r\n");
      out.write("\tmargin-top:10px;\r\n");
      out.write("}\r\n");
      out.write("#no_mem{\r\n");
      out.write("\tmargin-left:60px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" <div class=\"login-box\">\r\n");
      out.write("            \r\n");
      out.write("        <!-- <button type=\"button\"  onclick=\"unBlockUI('layer_login');return false;\">닫기</button> -->\r\n");
      out.write("       \t<div id=\"tit\">\r\n");
      out.write("       \t\t<h2>로그인</h2>\r\n");
      out.write("       \t</div>\r\n");
      out.write("        \r\n");
      out.write("        <div>\r\n");
      out.write("            <form id=\"loginLayerForm\" method=\"post\" action=\"");
      out.print( contextPath);
      out.write("/login.me\">\r\n");
      out.write("\r\n");
      out.write("                <input name=\"userId\" id=\"id\" type=\"text\" placeholder=\"아이디\" maxlength=\"50\" required><br><br>\r\n");
      out.write("                <input name=\"userPwd\" id=\"pwd\" type=\"password\" placeholder=\"비밀번호\" maxlength=\"20\" required><br><br>\r\n");
      out.write("                <button id=\"loginBtn\" type=\"submit\">로그인</button><br>\r\n");
      out.write("      \t\t\t \r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <input type=\"checkbox\" id=\"idSaveCheck\">아이디 저장\r\n");
      out.write("\r\n");
      out.write("            <br><br>\r\n");
      out.write("            <button id=\"joinup\" type=\"submit\" onclick=\"enrollForm();\">신규 회원가입</button>\r\n");
      out.write("            <br><br>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("       <div class=\"bt_set\">\r\n");
      out.write("\r\n");
      out.write("        <a href=\"\" id=\"find_mem\">아이디/비밀번호 찾기</a>\r\n");
      out.write("        <a href=\"\" id=\"no_mem\">비회원 주문조회</a>\r\n");
      out.write("       </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tfunction enrollForm() {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\topener.parent.location=\"");
      out.print(contextPath);
      out.write("/enrollForm.me\";\t\t\t\r\n");
      out.write("\t\t\twindow.close();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
