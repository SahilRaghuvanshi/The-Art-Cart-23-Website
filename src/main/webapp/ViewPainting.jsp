<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException,java.sql.*,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"  %>
<%@ page import="org.json.JSONArray,org.json.JSONObject" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">
        <script type="text/javascript">
        function Facebook() {
              window.location.href = "https://www.facebook.com/theartcart23/";
            }
            function Pinterest() {
                window.location.href = "https://pin.it/11zT6YQ";
              }
              function Youtube() {
                window.location.href = "https://www.youtube.com/@TheArtCart23";
              }
              function Instagram() {
                window.location.href = "https://www.instagram.com/theartcart23/";
              }
              function WhatsApp() {
                  window.location.href = "https://api.whatsapp.com/send/?phone=+8805683076&text=I have a query";
                }
        </script>
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
    <div class="main-painting-view" id="mainpaintingview">
    </div>
    <%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn;
		cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb", "root", "system");
		String tag = request.getParameter("tag").toString();
		String query = "select * from painting where tag=?;";
		PreparedStatement statement = cn.prepareStatement(query);
		statement.setString(1, tag);
		ResultSet rs = statement.executeQuery();
    %>
    <% 
    JSONArray jsonArray = new JSONArray();
    while (rs.next()) {
        JSONObject obj = new JSONObject();
        obj.put("p_id", rs.getString("p_id"));
        obj.put("name", rs.getString("name"));
        obj.put("url", rs.getString("url"));
        obj.put("likes", rs.getInt("likes"));
        obj.put("youtube_link", rs.getString("youtube_link"));
        obj.put("tag", rs.getString("tag"));
        obj.put("price", rs.getInt("price"));
        obj.put("description", rs.getString("description"));
        obj.put("status",rs.getInt("status"));
        jsonArray.put(obj);
    }
    %>
    <script type="text/javascript">
    var detail = <%= jsonArray %>;
    var container1 = document.getElementById("mainpaintingview");
    
	var p_id = detail[0].p_id;
	var name = detail[0].name;
	var url = detail[0].url;
	var likes = detail[0].likes;
	var youtube_link = detail[0].youtube_link;
	var tag = detail[0].tag;
	var price = detail[0].price;
	var description = detail[0].description;
	var status = detail[0].status;
	
		var card1 = document.createElement('div')
		card1.className='paint-card'
		
		var painting_image = document.createElement('img')
		painting_image.className='card-img'
		painting_image.src=url
		
		var paintdetail = document.createElement('div')
		paintdetail.className='painting-details'
		
		var painttitle = document.createElement('p')
		painttitle.className='title'
		painttitle.innerHTML=name
		
		var paintdescription = document.createElement('p')
		paintdescription.innerHTML=description
		
		var buttonflex = document.createElement('div')
		buttonflex.className="flexes"
		
		var price1 = document.createElement('p')
		price1.className='title'
		price1.innerHTML="Rs. "+price
			
		var buybutton = document.createElement('input')
		buybutton.type="button"
		buybutton.className='Buy-Now'
		if(status==0){
			buybutton.value='Buy Now'
				buybutton.addEventListener("click", function() {
						  window.location.href = "buy.jsp?tag="+tag;
						});			
		}
		else
			{
			buybutton.value='Sold Out'			
			}
		buttonflex.appendChild(buybutton)
		
		var watchbutton = document.createElement('input')
		watchbutton.type="button"
		watchbutton.className='watch-video'
		watchbutton.value='Watch Youtube Video'
		watchbutton.addEventListener("click", function() {
				  window.location.href = youtube_link;
				});
		buttonflex.appendChild(watchbutton)
		
		
			
		card1.append(painting_image)
		paintdetail.appendChild(painttitle)
		paintdetail.appendChild(paintdescription)
		paintdetail.appendChild(price1)
		paintdetail.appendChild(buttonflex)
		container1.appendChild(card1)
		container1.appendChild(paintdetail)
	</script> 
	        <button class="whatsapp" class="wtflex">
            <img src="https://i.ibb.co/NT9d9G9/Pngtree-whatsapp-phone-icon-8704826.png" class="wtlogo" alt="" onclick="WhatsApp()">
            <div class="wttext">Whatsapp Us</div>
        </button> 
	        <div class="bottom">
                <div class="follow">Follow us on </div>
                <img src="https://i.ibb.co/f44Gpnx/Pngtree-facebook-communication-social-media-8704815.png" class="social" alt="facebook" onclick="Facebook()" >
                <img src="https://i.ibb.co/ZJGhRf6/pinterest-png-pinterest-logos-vector-png-hd-5200.png" style="margin-left: 100px;" class="social" alt="" onclick="Pinterest()" >
                <img src="https://i.ibb.co/XCJ9cnx/youtube-logo-png-picture-13.png" class="social" alt="" onclick="Youtube()">
                <img src="https://i.ibb.co/zhZSKdk/59-597677-follow-us-on-these-social-media-links-instagram.png" class="social" alt="" onclick="Instagram()">                    
        </div>  
</body>
</html>