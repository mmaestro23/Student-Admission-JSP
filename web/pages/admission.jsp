<%-- 
    Document   : admission
    Created on : Mar 18, 2023, 1:24:21 PM
    Author     : ericm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<jsp:useBean id="stuBean" class="uni.beans.StudentBean" scope="request" />
<%
String email = (String)session.getAttribute("email");
if(email == null) {
    response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Admission Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: 'Poppins',sans-serif;
        }
        body{
          background-color: #080710;
        }
        .background{
            width: 430px;
            height: 520px;
            position: absolute;
            transform: translate(-50%,-50%);
            left: 50%;
            top: 50%;
        }
        .background .shape{
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }
        .shape:first-child{
            background: linear-gradient(
                #9b22ea,
                #bf23f6
            );
            left: -80px;
            top: -80px;
        }
        .shape:last-child{
            background: linear-gradient(
                to right,
                #ff512f,
                #f09819
            );
            right: -30px;
            bottom: -80px;
        }
        .content form {
          height: 620px;
          width: 1000px;
          background-color: rgba(255,255,255,0.07);
          position: absolute;
          transform: translate(-50%,-50%);
          top: 50%;
          left: 50%;
          border-radius: 10px;
          backdrop-filter: blur(10px);
          border: 2px solid rgba(255,255,255,0.1);
          box-shadow: 0 0 40px rgba(8,7,16,0.6);
          padding: 50px 35px;
        }
        form h3{
          margin-top: -25px;
          font-size: 32px;
          font-weight: 500;
          line-height: 42px;
          color: #ffffff;
        }
        form h3 span{
            display: block;
            font-size: 16px;
            font-weight: 300;
            color: #e5e5e5;
        }
        .content form .user-details{
          display: flex;
          flex-wrap: wrap;
          justify-content: space-between;
          margin: 20px 0 12px 0;
        }
        form .user-details .input-box{
          margin-bottom: 15px;
          width: calc(100% / 2 - 20px);
        }
        form .input-box span.details{
          display: block;
          font-weight: 500;
          margin-bottom: 5px;
          color: #ffffff;
        }
        .user-details .input-box input, select{
            height: 35px;
            width: 100%;
            color: #fff;
            outline: none;
            background-color: rgba(255,255,255,0.07);
            border-radius: 5px;
            padding: 0 10px;
            font-size: 14px;
            font-weight: 300;
        }
        .user-details .input-box input:focus,
        .user-details .input-box input:valid{
          border-color: #9b59b6;
        }

         form .category{
           display: flex;
           width: 80%;
           margin: 14px 0 ;
           justify-content: space-between;
         }
         form .category label{
           display: flex;
           align-items: center;
           cursor: pointer;
         }
         form .category label .dot{
          height: 18px;
          width: 18px;
          border-radius: 50%;
          margin-right: 10px;
          background: #d9d9d9;
          border: 5px solid transparent;
          transition: all 0.3s ease;
        }
         #dot-1:checked ~ .category label .one,
         #dot-2:checked ~ .category label .two,
         #dot-3:checked ~ .category label .three{
           background: #9b59b6;
           border-color: #d9d9d9;
         }
         form .button{
           height: 45px;
           margin: 35px 0;
           margin-top: 15px;
         }
         form .button input{
           height: 100%;
           width: 100%;
           border-radius: 5px;
           border: none;
           color: #fff;
           font-size: 18px;
           font-weight: 500;
           letter-spacing: 1px;
           cursor: pointer;
           transition: all 0.3s ease;
           background: linear-gradient(135deg, #71b7e6, #9b59b6);
         }
         form .button input:hover{
          /* transform: scale(0.99); */
          background: linear-gradient(-135deg, #71b7e6, #9b59b6);
          }
         @media(max-width: 584px){
         .container{
          max-width: 100%;
        }
        form .user-details .input-box{
            margin-bottom: 15px;
            width: 100%;
          }
          form .category{
            width: 100%;
          }
          .content form .user-details{
            max-height: 300px;
            overflow-y: scroll;
          }
          .user-details::-webkit-scrollbar{
            width: 5px;
          }
          }
          @media(max-width: 459px){
          .container .content .category{
            flex-direction: column;
          }
        }
    </style>
</head>
<body>   
    <div class="content">
       <form action="admitStudent.jsp" method="post" enctype="multipart/form-data">
        <h3>Admission Form
            <span>Be One Of Us. Register Here!</span>
        </h3>
        <div class="user-details">
          <div class="input-box">
            <span class="details">National ID</span>
            <input type="text" name="nID" value="${stuBean.id}" placeholder="Enter your ID" >
          </div>
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="username" value="${stuBean.names}" placeholder="Enter your full names" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="email" value="${stuBean.email}" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone" value="${stuBean.phone}" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Date Of Birth</span>
            <input type="date" name="dob" value="${stuBean.dob}" >
          </div>
          <div class="input-box">
            <span class="details">Faculty</span>
            <select id="gender" name="faculty" value="${stuBean.faculty}">
            <option value="">Select Faculty</option>
            <option value="it">Information Technology</option>
            <option value="bss">Business Administration</option>
            <option value="theo">Theology</option>
            <option value="edu">Education</option>
            <option value="other">Other</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Country</span>
            <input type="text" name="address" value="${stuBean.address}" placeholder="Enter your country" required>
          </div>
          <div class="input-box">
            <span class="details">Gender</span>
            <select id="genderr" value="${stuBean.gender}" name="gender">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Passport Photo</span>
            <input type="file" name="photo" value="${stuBean.photo}" accept=".jpg,.png" >
          </div>
          <div class="input-box">
            <span class="details">Certificate</span>
            <input type="file" name="diploma" value="${stuBean.diploma}" accept=".pdf" >
          </div>
        </div>
        <font style="color: red">
        ${stuBean.errorMessage}
        </font>
        <font style="color: green">
        ${stuBean.infoMessage}
        </font>
        <% if (request.getAttribute("action") == null) { %>
        <div class="button">
          <input type="submit" name="action" value="Apply">
        </div>
        <%} else {%>
        <div class="button">
          <input type="submit" name="action" value="${action}">
        </div>
        <% } %>
      </form>
    </div>
</body>
</html>

