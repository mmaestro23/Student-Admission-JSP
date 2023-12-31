<%-- 
    Document   : register
    Created on : Mar 18, 2023, 10:17:48 AM
    Author     : ericm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="userBean" class="uni.beans.UserBean" scope="request" />
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create an account</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *,
        *:before,
        *:after{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
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
        form{
            margin-top: 0px;
            height: 600px;
            width: 430px;
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
        form *{
            font-family: 'Poppins',sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        form h5{
            margin-top: -10px;
            font-size: 25px;
            font-weight: 500;
            line-height: 42px;
        }
        form h5 span{
            display: block;
            margin-top: -10px;
            font-size: 16px;
            font-weight: 300;
            color: #e5e5e5;
        }
        label{
            display: block;
            margin-top: 5px;
            font-size: 16px;
            font-weight: 500;
        }
        input{
            display: block;
            height: 40px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            outline: none;
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        ::placeholder{
            color: #e5e5e5;
        }
        form .button{
            margin-top: -100px;
            margin: 35px 0;
            height: 45px;
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
           background: linear-gradient(135deg, #9b59b6 ,#71b7e6);
         }
         form .button input:hover{
          /* transform: scale(0.99); */
          background: linear-gradient(-135deg, #9b59b6 ,#71b7e6);
          }
         @media(max-width: 584px){
         .container{
          max-width: 100%;
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="registerUser.jsp" method="post">
        <h5>Create Your Account
            <span>Take your first step.</span>
        </h5>

        <label for="fname">Enter your First Name</label>
        <input type="text" name="fname" value="${userBean.firstName}" required>

        <label for="lname">Enter your Last Name</label>
        <input type="text" name="lname" value="${userBean.lastName}" required>

        <label for="email">Enter your Email</label>
        <input type="email" name="email" value="${userBean.email}" required>

        <label for="password">Enter your Password</label>
        <input type="password" placeholder="Minimum 6 characters" name="password" value="${userBean.password}" required>
        <font style="color: red">
        ${userBean.errorMessage}
        </font>
        <font style="color: green">
        ${userBean.infoMessage}
        </font>
        <% if (request.getAttribute("action") == null) { %>
        <div class="button">
            <input type="submit" name="action" value="Register">
        </div>
        <%}%>
        <span>Have an account? <a href="login.jsp">Log In</a> here.</span>
    </form>
</body>
</html>
