<!-- templatemo 383 smoke house -->
<!-- 
Smoke House Template 
http://www.templatemo.com/preview/templatemo_383_smoke_house 
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Medical</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>

<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;

}
</script>

</head>
  <%
if(request.getParameter("msg")!=null){%>
    
    out.print("<script>alert('Login Sucessfully..!')</script>");


<%}
if(request.getParameter("m1")!=null){%>

 out.print("<script>alert('Login Failed..!')</script>");
 <%
}
%>

<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title">
            <font size="5" color="white">Secure Data Transmission in Internet of Medical Things Using RES-256 Algorithm</font>
        </div>
        <div id="header_right">
        	<form action="#" method="get">
        
                

                
            </form>
            
		</div>
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
             <li><a href="userhome.jsp">Home</a></li>
                                    <li><a href="upload.jsp" class="selected">Upload Data</a></li>          
                                    <li><a href="keygen.jsp">Key Generation</a></li> 
                                    <li><a href="uview.jsp">View Data</a></li>   
                                    <li><a href="uviewreq.jsp">View Request</a></li> 
                                    <li><a href="uviewpresc.jsp">View Prescription</a></li> 
                                    <li><a href="logout.jsp">Logout</a></li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_slider">
    	<div id="one" class="contentslider">
            <div class="cs_wrapper">
                <div class="cs_slider">
                
                <div class="cs_article">
                    <div class="slider_image_wrapper"><span></span>
                    	<img src="Gallery/logo.png" alt="slider image 1" />
                    </div>                    
                    <div class="cs_article_des">
                        <h2>Secure Data Transmission</h2>
                         <p>
Secure Data Transmission in Internet of Medical Things Using RES-256 Algorithm  Provides effective method
for securing data by while giving access to researchers and save cloud space by checking Deduplicatoin before uploding
to cloud.</p>
                    </div>                           
                </div><!-- End cs_article -->
                
                <!-- End cs_article -->
                  
                  <!-- End cs_article -->
                  
                  <!-- End cs_article -->
                    
                    
              
                </div><!-- End cs_slider -->
            </div><!-- End cs_wrapper -->
        </div><!-- End contentslider -->
        
        <!-- Site JavaScript -->
        
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
        <script type="text/javascript">
            $(function() {
            $('#one').ContentSlider({
            width : '800px',
            height : '260px',
            speed : 400,
            easing : 'easeOutSine'
            });
            });
        </script>
        <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
        <script src="js/chili/recipes.js" type="text/javascript"></script>
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_slider -->
    
    <div id="templatemo_main">
        <center><h1> <font color="#be7107" size="4">Upload Patient Data</font> </h1>
               
	
                   <center>
<form name="f2" action="upload1.jsp" method="post"  style="margin-right:  50px">

            <table>
                <tr>
                    <td align="left"><font size="4" color="black"> Patient ID: </font></td><td>
                        <input type="text" align="left"  name="pid"/>
                </tr>
                
                <tr>
                    
                        <th><strong><font size="3" color="white">Attribute </font></strong></th> 
                        <th><select id="loc" name="att" required style="height:34px; width:150px">
                                  <option value="na" selected="" >Select:</option>
                                        <option value="Physician" >Physician</option>
                                        <option value="Skin">Skin</option>
                                          <option value="HJeart">Heart</option>  </select></th>
                    
                </tr>       
               
 <tr>
                    <td align="right"><font size="4" color="black">File Browse</font> </td><td> 
                        <input type="file" align="left" size="25" name="file" id="file"  onchange="loadFileAsText()"/></td>
                </tr>

<tr>
              <td bgcolor="#FF0000">&nbsp;</td>
              <td><textarea  id="textarea" name="data" cols="50" rows="15"></textarea></td>
            </tr>
                
                
                
                <tr>
                    <td>  
                        <font size="2" color="pink">
                            <input type="submit"  align="right" value='Submit' />
                           
                    </td>


                    <td>
                         
                        <font size="2" color="pink">
                            <input type="reset" align="left" value='Reset'  />
                      </center>  
                 
        
        
        </center> 
          <div class="cleaner"></div>
         <!-- end of content -->
        
         <!-- end of templatemo_sidebar -->
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_main -->
    
    
    
    <div id="templatemo_footer">
       Secure Data Transmission
    </div> <!-- end of templatemo_footer -->
</div> <!-- end of templatemo_wrapper -->

</body>
</html>