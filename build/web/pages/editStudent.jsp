<%-- 
    Document   : editStudent
    Created on : Mar 20, 2023, 6:51:57 PM
    Author     : ericm
--%>

<%@page import="java.util.Date"%>
<%@page import="uni.model.Student"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="uni.service.StudentService"%>
<%@page import="uni.service.StudentServiceInterface" %>
<jsp:useBean id="stuBean" class="uni.beans.StudentBean" scope="request" />
<%
        stuBean.setId(Integer.parseInt(request.getParameter("id")));
        String action = request.getParameter("action");
        StudentServiceInterface stud = new StudentService();
        Student student= stud.getStudent(stuBean.getId());
        
        
        stuBean.setNames(student.getNames());

        stuBean.setPhone(student.getPhone());
        stuBean.setEmail(student.getEmail());

        stuBean.setAddress(student.getAddress());
        
        
        request.setAttribute("action", action);
        request.getRequestDispatcher("admission.jsp").forward(request, response);
    
%>
