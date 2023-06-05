<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
     <div class="navbar">
        <div class="text">
            Beauty of Art Unfolded
        </div>
        <div>
            <a href="home.jsp" class="options">Home</a>
            <a href="about.html" class="options">About us</a>
            <a href="index.jsp" class="options">Logout</a>
        </div>
    </div> 
<div class="middle">
    <form class="form-card Formcss" method="get" action="http://localhost:9292/TheArtCart23/addBuyer">
        <table>
            <tr class="row1">
                <td>
                    First Name
                </td>
                <td>
                    <input type="text" required id="fname" name="fname" class="inputtag" >
                </td>
            </tr>
            <tr class="row">
                <td>
                    Last Name
                </td>
                <td>
                    <input type="text" required id="lname" name="lname" class="inputtag">
                </td>
            </tr>
            <tr class="row">
                <td>
                    Street Name
                </td>
                <td>
                    <input type="text" required id="streetname" name="streetname" class="inputtag" >
                </td>
            </tr>
            <tr class="row">
                <td>
                    State
                </td>
                <td>
                    <select id="state" name="state" class="inputtag">
                        <option value="" disabled selected>Select a state</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Goa">Goa</option>
                        <option value="Goa">Maharashtra</option>
                        <!-- Add more options for other states -->
                      </select>
                </td>
            </tr>
            <tr class="row">
                <td>
                    City
                </td>
                <td>
                    <input type="text" required id="cityname" name="cityname" class="inputtag">
                </td>
            </tr>
            <tr class="row">
                <td>
                   Pincode
                </td>
                <td>
                    <input type="text" id="pincode" name="pincode" class="inputtag">
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"  class="submit-button"></td>
              </tr>
        </table>  
         <input type="hidden" id="tag" name="tag" class="inputtag" value=<%=request.getParameter("tag") %>>
</body>
</html>