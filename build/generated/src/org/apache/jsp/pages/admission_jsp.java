package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admission_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      uni.beans.StudentBean stuBean = null;
      synchronized (request) {
        stuBean = (uni.beans.StudentBean) _jspx_page_context.getAttribute("stuBean", PageContext.REQUEST_SCOPE);
        if (stuBean == null){
          stuBean = new uni.beans.StudentBean();
          _jspx_page_context.setAttribute("stuBean", stuBean, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');

String email = (String)session.getAttribute("email");
if(email == null) {
    response.sendRedirect("login.jsp");
}

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Admission Form</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <style>\n");
      out.write("      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');\n");
      out.write("        *{\n");
      out.write("          margin: 0;\n");
      out.write("          padding: 0;\n");
      out.write("          box-sizing: border-box;\n");
      out.write("          font-family: 'Poppins',sans-serif;\n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("          background-color: #080710;\n");
      out.write("        }\n");
      out.write("        .background{\n");
      out.write("            width: 430px;\n");
      out.write("            height: 520px;\n");
      out.write("            position: absolute;\n");
      out.write("            transform: translate(-50%,-50%);\n");
      out.write("            left: 50%;\n");
      out.write("            top: 50%;\n");
      out.write("        }\n");
      out.write("        .background .shape{\n");
      out.write("            height: 200px;\n");
      out.write("            width: 200px;\n");
      out.write("            position: absolute;\n");
      out.write("            border-radius: 50%;\n");
      out.write("        }\n");
      out.write("        .shape:first-child{\n");
      out.write("            background: linear-gradient(\n");
      out.write("                #9b22ea,\n");
      out.write("                #bf23f6\n");
      out.write("            );\n");
      out.write("            left: -80px;\n");
      out.write("            top: -80px;\n");
      out.write("        }\n");
      out.write("        .shape:last-child{\n");
      out.write("            background: linear-gradient(\n");
      out.write("                to right,\n");
      out.write("                #ff512f,\n");
      out.write("                #f09819\n");
      out.write("            );\n");
      out.write("            right: -30px;\n");
      out.write("            bottom: -80px;\n");
      out.write("        }\n");
      out.write("        .content form {\n");
      out.write("          height: 620px;\n");
      out.write("          width: 1000px;\n");
      out.write("          background-color: rgba(255,255,255,0.07);\n");
      out.write("          position: absolute;\n");
      out.write("          transform: translate(-50%,-50%);\n");
      out.write("          top: 50%;\n");
      out.write("          left: 50%;\n");
      out.write("          border-radius: 10px;\n");
      out.write("          backdrop-filter: blur(10px);\n");
      out.write("          border: 2px solid rgba(255,255,255,0.1);\n");
      out.write("          box-shadow: 0 0 40px rgba(8,7,16,0.6);\n");
      out.write("          padding: 50px 35px;\n");
      out.write("        }\n");
      out.write("        form h3{\n");
      out.write("          margin-top: -25px;\n");
      out.write("          font-size: 32px;\n");
      out.write("          font-weight: 500;\n");
      out.write("          line-height: 42px;\n");
      out.write("          color: #ffffff;\n");
      out.write("        }\n");
      out.write("        form h3 span{\n");
      out.write("            display: block;\n");
      out.write("            font-size: 16px;\n");
      out.write("            font-weight: 300;\n");
      out.write("            color: #e5e5e5;\n");
      out.write("        }\n");
      out.write("        .content form .user-details{\n");
      out.write("          display: flex;\n");
      out.write("          flex-wrap: wrap;\n");
      out.write("          justify-content: space-between;\n");
      out.write("          margin: 20px 0 12px 0;\n");
      out.write("        }\n");
      out.write("        form .user-details .input-box{\n");
      out.write("          margin-bottom: 15px;\n");
      out.write("          width: calc(100% / 2 - 20px);\n");
      out.write("        }\n");
      out.write("        form .input-box span.details{\n");
      out.write("          display: block;\n");
      out.write("          font-weight: 500;\n");
      out.write("          margin-bottom: 5px;\n");
      out.write("          color: #ffffff;\n");
      out.write("        }\n");
      out.write("        .user-details .input-box input, select{\n");
      out.write("            height: 35px;\n");
      out.write("            width: 100%;\n");
      out.write("            color: #fff;\n");
      out.write("            outline: none;\n");
      out.write("            background-color: rgba(255,255,255,0.07);\n");
      out.write("            border-radius: 5px;\n");
      out.write("            padding: 0 10px;\n");
      out.write("            font-size: 14px;\n");
      out.write("            font-weight: 300;\n");
      out.write("        }\n");
      out.write("        .user-details .input-box input:focus,\n");
      out.write("        .user-details .input-box input:valid{\n");
      out.write("          border-color: #9b59b6;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("         form .category{\n");
      out.write("           display: flex;\n");
      out.write("           width: 80%;\n");
      out.write("           margin: 14px 0 ;\n");
      out.write("           justify-content: space-between;\n");
      out.write("         }\n");
      out.write("         form .category label{\n");
      out.write("           display: flex;\n");
      out.write("           align-items: center;\n");
      out.write("           cursor: pointer;\n");
      out.write("         }\n");
      out.write("         form .category label .dot{\n");
      out.write("          height: 18px;\n");
      out.write("          width: 18px;\n");
      out.write("          border-radius: 50%;\n");
      out.write("          margin-right: 10px;\n");
      out.write("          background: #d9d9d9;\n");
      out.write("          border: 5px solid transparent;\n");
      out.write("          transition: all 0.3s ease;\n");
      out.write("        }\n");
      out.write("         #dot-1:checked ~ .category label .one,\n");
      out.write("         #dot-2:checked ~ .category label .two,\n");
      out.write("         #dot-3:checked ~ .category label .three{\n");
      out.write("           background: #9b59b6;\n");
      out.write("           border-color: #d9d9d9;\n");
      out.write("         }\n");
      out.write("         form .button{\n");
      out.write("           height: 45px;\n");
      out.write("           margin: 35px 0;\n");
      out.write("           margin-top: 15px;\n");
      out.write("         }\n");
      out.write("         form .button input{\n");
      out.write("           height: 100%;\n");
      out.write("           width: 100%;\n");
      out.write("           border-radius: 5px;\n");
      out.write("           border: none;\n");
      out.write("           color: #fff;\n");
      out.write("           font-size: 18px;\n");
      out.write("           font-weight: 500;\n");
      out.write("           letter-spacing: 1px;\n");
      out.write("           cursor: pointer;\n");
      out.write("           transition: all 0.3s ease;\n");
      out.write("           background: linear-gradient(135deg, #71b7e6, #9b59b6);\n");
      out.write("         }\n");
      out.write("         form .button input:hover{\n");
      out.write("          /* transform: scale(0.99); */\n");
      out.write("          background: linear-gradient(-135deg, #71b7e6, #9b59b6);\n");
      out.write("          }\n");
      out.write("         @media(max-width: 584px){\n");
      out.write("         .container{\n");
      out.write("          max-width: 100%;\n");
      out.write("        }\n");
      out.write("        form .user-details .input-box{\n");
      out.write("            margin-bottom: 15px;\n");
      out.write("            width: 100%;\n");
      out.write("          }\n");
      out.write("          form .category{\n");
      out.write("            width: 100%;\n");
      out.write("          }\n");
      out.write("          .content form .user-details{\n");
      out.write("            max-height: 300px;\n");
      out.write("            overflow-y: scroll;\n");
      out.write("          }\n");
      out.write("          .user-details::-webkit-scrollbar{\n");
      out.write("            width: 5px;\n");
      out.write("          }\n");
      out.write("          }\n");
      out.write("          @media(max-width: 459px){\n");
      out.write("          .container .content .category{\n");
      out.write("            flex-direction: column;\n");
      out.write("          }\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>   \n");
      out.write("    <div class=\"content\">\n");
      out.write("       <form action=\"admitStudent.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("        <h3>Admission Form\n");
      out.write("            <span>Be One Of Us. Register Here!</span>\n");
      out.write("        </h3>\n");
      out.write("        <div class=\"user-details\">\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">National ID</span>\n");
      out.write("            <input type=\"text\" name=\"nID\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Enter your ID\" >\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Full Name</span>\n");
      out.write("            <input type=\"text\" name=\"username\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.names}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Enter your full names\" required>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Email</span>\n");
      out.write("            <input type=\"email\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Enter your email\" required>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Phone Number</span>\n");
      out.write("            <input type=\"text\" name=\"phone\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Enter your number\" required>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Date Of Birth</span>\n");
      out.write("            <input type=\"date\" name=\"dob\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.dob}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" >\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Faculty</span>\n");
      out.write("            <select id=\"gender\" name=\"faculty\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.faculty}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <option value=\"\">Select Faculty</option>\n");
      out.write("            <option value=\"it\">Information Technology</option>\n");
      out.write("            <option value=\"bss\">Business Administration</option>\n");
      out.write("            <option value=\"theo\">Theology</option>\n");
      out.write("            <option value=\"edu\">Education</option>\n");
      out.write("            <option value=\"other\">Other</option>\n");
      out.write("            </select>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Country</span>\n");
      out.write("            <input type=\"text\" name=\"address\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Enter your country\" required>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Gender</span>\n");
      out.write("            <select id=\"genderr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.gender}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"gender\">\n");
      out.write("            <option value=\"\">Select Gender</option>\n");
      out.write("            <option value=\"Male\">Male</option>\n");
      out.write("            <option value=\"Female\">Female</option>\n");
      out.write("            <option value=\"Other\">Other</option>\n");
      out.write("            </select>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Passport Photo</span>\n");
      out.write("            <input type=\"file\" name=\"photo\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.photo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" accept=\".jpg,.png\" >\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-box\">\n");
      out.write("            <span class=\"details\">Certificate</span>\n");
      out.write("            <input type=\"file\" name=\"diploma\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.diploma}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" accept=\".pdf\" >\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <font style=\"color: red\">\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("        </font>\n");
      out.write("        <font style=\"color: green\">\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${stuBean.infoMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("        </font>\n");
      out.write("        ");
 if (request.getAttribute("action") == null) { 
      out.write("\n");
      out.write("        <div class=\"button\">\n");
      out.write("          <input type=\"submit\" name=\"action\" value=\"Apply\">\n");
      out.write("        </div>\n");
      out.write("        ");
} else {
      out.write("\n");
      out.write("        <div class=\"button\">\n");
      out.write("          <input type=\"submit\" name=\"action\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${action}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("        </div>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
