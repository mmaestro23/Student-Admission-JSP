<%-- 
    Document   : done
    Created on : Mar 18, 2023, 2:31:34 PM
    Author     : ericm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Done!</title>
    <style>
        *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
        }
        body{
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #080710;
        }
        .name{
            position: relative;
            margin-bottom: 300px;
        }
        .name h2{
            position: absolute;
            color: #fff;
            transform: translate(-50%,-50%);
            font-size: 8em;
        }
        .name h2:nth-child(1){
            color: transparent;
            -webkit-text-stroke: 2px #03a9f4;
        }
        .name h2:nth-child(2){
            color: #03a9f4;
            animation: animate 4s ease-in-out infinite;
        }
        @keyframes animate{
            0%,100%{
                clip-path: polygon(0% 45%, 15% 44%,32% 50%,54% 60%,
                 70% 61%, 84% 59%, 100% 52%, 100% 100%, 0% 100%);
            }
            50%{
                clip-path: polygon(0% 60%, 16% 65%,34% 66%,51% 62%,
                 67% 50%, 84% 45%, 100% 46%, 100% 100%, 0% 100%);
            }
        }
        .content form {
          height: 200px;
          width: 750px;
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
        @media(max-width: 459px){
        .container .content .category{
           flex-direction: column;
        }
    </style>
</head>
<body>
    <div class="name">
        <h2>MAESTRO</h2>
        <h2>MAESTRO</h2>
    </div>
    <div class="content">
       <form>
        <h3>It's done!
            <span>We've sent you an email confirming the submission of your admission</span>
        </h3>
        <div class="button">
          <a href="dashboard.jsp"><input type="button" value="OK"></a>
        </div>
      </form>
    </div>
</body>
</html>
