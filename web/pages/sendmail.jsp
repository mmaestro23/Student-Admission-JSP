<%-- 
    Document   : sendmail
    Created on : Mar 18, 2023, 7:41:29 PM
    Author     : ericm
--%>

<%@page import="java.util.Properties"%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@page import="uni.model.Student"%>
<%
String names = request.getParameter("names");
String email = request.getParameter("email");
String subject = "Student Admission";
String message = "Dear " + names + ",<br><br>"
               + "We're thrilled to inform you that your application to our school has been approved!<br>"
               + "We look forward to welcoming you as our student.<br><br>"
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

