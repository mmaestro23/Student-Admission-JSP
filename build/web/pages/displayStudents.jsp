<%@page import="uni.service.StudentServiceInterface"%>
<%@page import="uni.service.StudentService"%>
<%@page import="java.util.List"%>
<%@page import="uni.model.Student"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<table id="customers">
  <tr>
    <th>ID</th>
    <th>FullNames</th>
    <th>Email</th>
    <th>PhoneNumber</th>
    <th>DateOfBirth</th>
    <th>Gender</th>
    <th>Faculty</th>
    <th>Address</th>
    <th>PassportPhoto</th>
    <th>Certificate</th>
    <th>Action</th>
  </tr>
  <%
        List<Student> students = new ArrayList<Student>();
        StudentServiceInterface studService = new StudentService();
        students = studService.getStudents();

        for (Student student : students) {
  %>
  <tr>
    <td><%=student.getId()%></td>
    <td><%=student.getNames()%></td>
    <td><%=student.getEmail()%></td>
    <td><%=student.getPhone()%></td>
    <td><%=student.getDob()%></td>
    <td><%=student.getGender()%></td>
    <td><%=student.getFaculty()%></td>
    <td><%=student.getAddress()%></td>
    <td><%=student.getPhoto()%></td>
    <td><%=student.getDiploma()%></td>
    <td><a href="sendmail.jsp?email=<%=student.getEmail()%>&names=<%=student.getNames()%>">ADMIT</a>
        <a href="sendmailre.jsp?email=<%=student.getEmail()%>&names=<%=student.getNames()%>">REJECT</a>
        <a href="editStudent.jsp?id=<%=student.getId() %>&action=Update">Update</a>
        <a href="editStudent.jsp?id=<%=student.getId()%>&action=Delete">Delete</a>
    </td>
  </tr>
  <%}%>
</table>

</body>
</html>