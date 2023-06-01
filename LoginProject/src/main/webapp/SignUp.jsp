

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<%@page import='java.io.*' %>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
.set_color{
					color:yellow;
  }
  </style>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="section">
	<div class="container">
		<div class="row row-sm justify-content-center">
			<div class="col-md-12 col-sm-12 col-12 ">	
                  <form action="LoginDataBase" method="get" class="bg-success">
			         <div class="imgcontainer">
			            <img src="img_avatar2.png" alt="Avatar" class="avatar">
			         </div>
			          <%
			  		    String message=request.getParameter("message");
			  		     if(message!=null)
			  		     {
					  %>
						  		<div style="text-align:center;color:cyan">
					  <%
						           out.print("<Strong>"+message+"</strong>");
			   		 %>
					     	    </div>
						  	<%		  
					           }
						   %>
							  <div class="container">
							      <div class="row row-sm justify-content-center">
								     <div class="col-xl-6 col-sm-6 ">
							               <label for="uname" class="set_color"><b>User Name<span style="color:red;">*</span></b></label>
							                  <input type="text" placeholder="Enter Username" name="uname">
				
							                <label for="psw" class="set_color"><b>Password<span style="color:red;">*</span></b></label>
							                    <input type="password" placeholder="Enter Password" name="pass" required>
								           <label for="psw" class="set_color"><b>Re-Password<span style="color:red;">*</span></b></label>
							            <input type="password" placeholder="Re Enter Password" name="repass" required>
							        <button type="submit" class="bg-danger">Sign Up</button>
							  </div>
						 </div>
				     </div>
 				 </form>
			</div>
		</div>
	</div>
  </div>	
</body>
</html>
