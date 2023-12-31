<%-- 
    Document   : dashboard
    Created on : Mar 18, 2023, 1:22:25 PM
    Author     : ericm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
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
          height: 350px;
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
	<div class="background">
      <div class="shape"></div>
      <div class="shape"></div>
  </div>
	<div class="content">
      <form>
        <h3>Here You Are
            <span>You are now Logged In!</span>
            <span>You can now APPLY for admission by the clicking the button below.</span>
        </h3>
        <div class="button">
          <a href="admission.jsp"><input type="button" value="Apply Here!"></a>
        </div>
        <div class="button">
          <a href="displayStudents.jsp"><input type="button" value="View Applicants!"></a>
        </div>
      </form>
    </div>
</body>
</html>
