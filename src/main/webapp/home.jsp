<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement"  %>
<%@ page import="org.json.JSONArray,org.json.JSONObject" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script type="text/javascript">
    function callJSP(tag) {
    	  window.location.href = "ViewPainting.jsp?tag="+tag;
    	}
    function WhatsApp() {
        window.location.href = "https://api.whatsapp.com/send/?phone=+8805683076&text=I have a query";
      }
    </script>
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
    <div class="heading">
        <img src="https://i.ibb.co/DgB5QRs/20201210-172842-3.jpg" class="user" alt="" >
        <div class="theartcart23">The Art Cart 23</div>
        <img src="https://i.ibb.co/mT0ZV2V/Paint-Palette-PNG-Transparent-HD-Photo.png" class="pallete" alt="" >
    </div>
     <div class="main-container">
        <div class="column">
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/GW7K2FL/115805446-634797714111919-6610215409178536049-n-1.jpg" class="card-img" alt="" onclick="callJSP('radhakrishna')">
                    <p class="likes">20000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/Y2Qm4HP/125194333-188652929410924-7470998720612144711-n.jpg" class="card-img" alt="" onclick="callJSP('italybeach')">
                    <p class="likes">25000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/zZC3sX6/theartcart23-p-CWk-FXrvo2r-W-1.jpg" class="card-img" alt="" onclick="callJSP('yashoda')">
                    <p class="likes">30000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/C6zj301/126559318-1051862408663115-118294157496779722-n-1.jpg" class="card-img" alt="" onclick="callJSP('3canvas')">
                    <p class="likes">45000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/Mp41s74/127186590-202504901328620-8500904478109005850-n.jpg" class="card-img" alt="" onclick="callJSP('rainbow')">
                    <p class="likes">52000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
        </div>
        <div class="column">
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/RBKVKDc/125934035-181791046933577-5697599412042612612-n.jpg" class="card-img" alt="" onclick="callJSP('night')">
                    <p class="likes">10000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/WvVcDTQ/125477645-653699278659348-6021761359874659281-n.jpg" class="card-img" alt="" onclick="callJSP('bobross')">
                    <p class="likes">23000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/vDxCHrZ/168070226-483700452819582-7901333256376234691-n.jpg" class="card-img" alt="" onclick="callJSP('taj')">
                    <p class="likes">45000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/mqtJmMC/241193717-1091906211339373-5542129750355528186-n.jpg" class="card-img" alt="" onclick="callJSP('shivaji')">
                    <p class="likes">21000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/WDcM4MS/125918126-402954637412049-4328410531653530617-n.jpg" height= 359px class="card-img" alt="" onclick="callJSP('stream')">
                    <p class="likes">23000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
        </div>
        <div class="column">
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/YkGffLB/125862982-677161466318366-4545184546512566945-n.jpg" class="card-img" alt="" onclick="callJSP('snow')">
                    <p class="likes">50000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/251HY9x/129722679-454615788858101-3357950210567174014-n-1.jpg" class="card-img" alt="" onclick="callJSP('buddha')">
                    <p class="likes">56000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/FbcGxcy/127724546-287620655993372-6905503344120424340-n.jpg" class="card-img" alt="" onclick="callJSP('street')">
                    <p class="likes">10000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/ZKR94m0/152046432-271221914365659-1503041134298698289-n.jpg" class="card-img" alt="" onclick="callJSP('heaven')">
                    <p class="likes">49000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/9ZSz9WB/125766472-158119926005505-2903865315395557349-n.jpg" height=171px class="card-img" alt="" onclick="callJSP('lake')">
                    <p class="likes">50000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
        </div>
        <div class="column">
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/cCxrC6q/theartcart23-p-CUT8cg-Po-J1-Y-1.jpg" height=200px class="card-img" alt="" onclick="callJSP('cafe')">
                    <p class="likes">27000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/vjb9rt5/IMG-20200913-100644.jpg" class="card-img" alt="" onclick="callJSP('peacock')">
                    <p class="likes">8900 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16" >
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/5kGxQTP/140585924-114593933908395-6557685873331990594-n.jpg" height=220px class="card-img" alt="" onclick="callJSP('oil')">
                    <p class="likes">47000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/KGqfWS1/242229952-2444128989064800-6463567936188448828-n.jpg" height=390px class="card-img" alt="" onclick="callJSP('sai')">
                    <p class="likes">87000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <img src="https://i.ibb.co/TTD16PN/128893023-842106956602780-6131006543338968340-n.jpg" height=316px class="card-img" alt="" onclick="callJSP('ganpati')">
                    <p class="likes">67000 likes</p>
                    <div class="heart">                    
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="pink" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                      </svg>
                    </div>
                </div>
            </div>
    </div>
    </div> 
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