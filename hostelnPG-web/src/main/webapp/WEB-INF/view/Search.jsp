<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>




  

  <script type="text/javascript" src="js/jquery-1.9.1.js"></script>

  

  

  

  
    <link rel="stylesheet" type="text/css" href="js/result-light.css">
  

  
    
      <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    
  
    
      <link rel="stylesheet" type="text/css" href="js/jquery-ui.css">
    
  
    
      <script type="text/javascript" src="js/jquery-ui.js"></script>
    
  
    
      <link rel="stylesheet" type="text/css" href="js/jquery.dataTables_themeroller.css">
    
  
    
      <link rel="stylesheet" type="text/css" href="js/jquery.dataTables.css">
    
  
    
      <script type="text/javascript" src="js/TableTools.min.js"></script>
<script type="text/javascript">//<![CDATA[
$(window).load(function(){
$('#sharing').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(2).text()) === "NO"
    }).toggle();
});
$('#boys').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(3).text()) === "girls"
    }).toggle();
});
$('#girls').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(3).text()) === "boys"
    }).toggle();
});

});

 

</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




</head>
<body>

		

<!-- <table>
  <tr>  <td class="wm">WM </td> <td> spc<td></tr>
   <tr> <td class="tv">TV</td></tr>
    <tr><td class="ac">ac</td></tr>
    
</table> -->

  
	 <input type="checkbox" id="sharing">Yes Need Sharing ?</>  
	  <input type="checkbox" id="boys">Boys Hostel</>
	   <input type="checkbox" id="girls">Girls Hostel</>


	     <c:choose>
    <c:when test="${empty hostelnPGPost}">
        <p>No Such Record Found.......!<p>
    </c:when>
    <c:otherwise>
       
<table id="mytable" class="someclass" summary="bla" border="0" cellpadding="1" cellspacing="1" >
    <thead>
 
    <th scope="row">id</th>
     <th scope="row">Hostel Name</th>
      <th scope="row">Sharing Type</th>
       <th scope="row">Boys /Girls</th>
    	
  </tr>
   
				  </thead>						
 <tbody>

    
  <tr>
  <c:forEach items="${hostelnPGPost}" var="hostelnPGPost">
   

  <td >${hostelnPGPost.id}</td>
    <td>${hostelnPGPost.hostel_name}</td>
    <td><h6>${hostelnPGPost.sharing_type}</td>
    <td>${hostelnPGPost.hostel_gender}</td>
   
  </tr>
 
  
   </c:forEach>

    </c:otherwise>
 </c:choose> 

</tbody>
</table>  

<%-- 
<display:table id="model" uid="models"  name="hostelnPGPost" requestURI="/searchfilter" pagesize="3" >

      
       
      <td class="p1"> <display:column  property="id" title="id" sortable="true"   /> 
       
        <display:column property="hostel_name" title="hostel_name" sortable="true"   />
       
       
  
    
    </display:table>
 --%>


</body>
</html>