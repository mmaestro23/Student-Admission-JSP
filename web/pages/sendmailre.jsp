<%-- 
    Document   : sendmailre
    Created on : Mar 18, 2023, 8:17:43 PM
    Author     : ericm
--%>

<%@page import="java.util.Properties"%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@page import="uni.model.Student"%>
<%
    //Student student = new Student();
String names = request.getParameter("names");
String email = request.getParameter("email");
String subject = "Student Admission";
String message = "Dear " + names + ",<br><br>"
               + "We regret to inform you that your admission to our school was not successful.<br>"
               + "We appreciate your interest in our institution and wish you all the best in your future endeavors.<br><br>"
               + "Best regards,<br>"
               + "MAESTRO";

final String from = "mmaestro1738@gmail.com";
final String password = "xyzlldrikikblrwg";

Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");

Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(from, password);
    }
});

try {
    Message msg = new MimeMessage(mailSession);
    msg.setFrom(new InternetAddress(from, false));
    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
    msg.setSubject(subject);
    msg.setContent(message, "text/html");
    Transport.send(msg);
    request.getRequestDispatcher("done.jsp").forward(request, response);
} catch (MessagingException e) {
    e.printStackTrace();
}
%>
