<%@page import="uni.model.OurUser"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="uni.service.UserService"%>
<%@page import="uni.service.UserServiceInterface" %>
<jsp:useBean id="userBean" class="uni.beans.UserBean" scope="request" />
<%
    try {
        OurUser users = new OurUser();
        
        users.setEmail(request.getParameter("email"));
        users.setFirstName(request.getParameter("fname"));
        users.setLastName(request.getParameter("lname"));
        users.setPassword(request.getParameter("password"));

        UserServiceInterface userr = new UserService();
        
        if (request.getParameter("action").equals("Register")) {
            userr.createAccount(users);
            userBean.setInfoMessage("Saved successfully!");
        }
        userBean.setErrorMessage("");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    } catch (Exception ex) {
        userBean.setErrorMessage("Error!");
        userBean.setInfoMessage("");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
%>