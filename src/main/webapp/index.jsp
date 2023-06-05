<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"  %>
<%@ page import="org.json.JSONArray,org.json.JSONObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The art cart 23</title>
<link rel="stylesheet" href="style.css">
<script  type="text/javascript"> 
Banners=new Array('img1.png','img2.png','img3.png','img4.png','img5.png') 
CurrentBanner=0 
function
DisplayBanners()
{
if(document.images)
{
CurrentBanner++
if(CurrentBanner == Banners.length )
{
CurrentBanner=0
}
document.RotateBanner.src=Banners[CurrentBanner]
setTimeout("DisplayBanners()",1000)
}
}

function Register()
{
	window.location.href = "RegistrationPage.html";
}
</script>
</head>

<body onload="DisplayBanners()">
     <div class="navbar">
        <div class="text">
            Beauty of Art Unfolded
        </div>
    </div> 
<div class="middle1">
    <form class="form-card1 Formcss" method="get" action="http://localhost:9292/TheArtCart23/verifyUser">
        <div>
        <p class="title1">Login Page</p>
        <table>
            <tr class="row1">
                <td>
                    Email ID
                </td>
                <td>
                    <input type="email" id="emailid" required name="emailid" class="inputtag" >
                </td>
            </tr>
            <tr class="row">
                <td>
                    Password
                </td>
                <td>
                    <input type="password" id="password" required name="password" class="inputtag">
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"  class="submit-button1" value="Login" >
                <input type="button"  class="submit-button1" value="Register" onclick="Register()"></td>
              </tr>
        </table>  
        </div>
		<img src="img1.png" width="500" height="500" name="RotateBanner" class="banner"/>
       </form>
</div>
</body>
</html>