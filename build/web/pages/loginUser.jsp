<%-- 
    Document   : loginUser
    Created on : Mar 18, 2023, 12:47:26 PM
    Author     : ericm
--%>

<%@page import="uni.model.OurUser"%>
<%@page import="uni.service.UserService"%>
<%@page import="uni.service.UserServiceInterface" %>
<jsp:useBean id="userBean" class="uni.beans.UserBean" scope="request" />
<%
    try {
        String userEmail = request.getParameter("email");
        String password = request.getParameter("password");
        
        OurUser users = new OurUser();
        UserServiceInterface userInterface = new UserService();
        users = userInterface.authenticateUser(userEmail, password);
        
        users.setEmail(request.getParameter("email"));
        users.setPassword(request.getParameter("password"));
        
        UserServiceInterface userr = new UserService();
        
        if(users!=null){
                request.getSession(true);
                request.getSession().setAttribute("First Name", users.getFirstName());
                request.getSession().setAttribute("Last Name", users.getLastName());
                request.getSession().setAttribute("password", users.getPassword());
                request.getSession().setAttribute("email", users.getEmail());
                request.getSession().setAttribute("isLoggedIn", true);
                //response.sendRedirect("dashboard.html");
        }else{
                //response.getWriter().write("<center>Incorrect email or password</center>");
        }
        
        if (request.getParameter("action").equals("Login")) {
            userr.authenticateUser(userEmail, password);
            //userBean.setInfoMessage("Saved successfully!");
        }
        userBean.setErrorMessage("");
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    } catch (Exception ex) {
        userBean.setErrorMessage("Incorrect Username OR Password!");
        userBean.setInfoMessage("");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
