<%-- 
    Document   : admitStudent
    Created on : Mar 18, 2023, 1:27:06 PM
    Author     : ericm
--%>

<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="uni.model.Student"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="uni.service.StudentService"%>
<%@page import="uni.service.StudentServiceInterface" %>
<jsp:useBean id="stuBean" class="uni.beans.StudentBean" scope="request" />
<%
    try {
        Student student = new Student();
        
        student.setId(Integer.parseInt(request.getParameter("nID")));
        student.setNames(request.getParameter("username"));
        student.setEmail(request.getParameter("email"));
        student.setPhone(request.getParameter("phone"));
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date dob = dateFormat.parse(request.getParameter("dob"));
        student.setDob(dob);
        student.setFaculty(request.getParameter("faculty"));
        student.setAddress(request.getParameter("address"));
        student.setGender(request.getParameter("gender"));
        
        Part filePartPicture = request.getPart("photo");
        String fileNamePicture = filePartPicture.getSubmittedFileName();
        Part filePartDiploma = request.getPart("diploma");
        String fileNameDiploma = filePartDiploma.getSubmittedFileName();
        OutputStream out1 = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();

        try {
            out1 = new FileOutputStream(new File("/upload" + File.separator + fileNamePicture));
            filecontent = filePartPicture.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out1.write(bytes, 0, read);
            }

            out1 = new FileOutputStream(new File("/upload" + File.separator + fileNameDiploma));
            filecontent = filePartPicture.getInputStream();
            read = 0;
            final byte[] bytes1 = new byte[1024];
            while ((read = filecontent.read(bytes1)) != -1) {
                out1.write(bytes1, 0, read);
            }

        } catch (FileNotFoundException fne) {
            writer.println("You either did not specify a file to upload or are "
                    + "trying to upload a file to a protected or nonexistent "
                    + "location.");
            writer.println("<br/> ERROR: " + fne.getMessage());

        } finally {
            if (out1 != null) {
                out1.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
            if (writer != null) {
                writer.close();
            }
        }

        StudentServiceInterface userr = new StudentService();
        
        if (request.getParameter("action").equals("Delete")) {
            userr.deleteStudent(student);
            //stuBean.setInfoMessage("Student Deleted!");
            request.getRequestDispatcher("done.jsp").forward(request, response);
        }else if(request.getParameter("action").equals("Update")) {
            userr.updateStudent(student);
            //stuBean.setInfoMessage("Student Updated!");
            request.getRequestDispatcher("done.jsp").forward(request, response);
        }else{
            userr.createAccount(student);
            stuBean.setInfoMessage("Student Admission was sent. We sent an email to comfirm!");
            request.getRequestDispatcher("done.jsp").forward(request, response);
        }
        stuBean.setErrorMessage("");
        
    } catch (Exception ex) {
        stuBean.setErrorMessage("Error in admitting student. Please Try Again!");
        stuBean.setInfoMessage("");
        request.getRequestDispatcher("admission.jsp").forward(request, response);
    }
%>
