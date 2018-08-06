<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
"http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title><tiles:insertAttribute name="title" ignore="true" /></title>  

<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery.form.js"></script>
<script type="text/javascript" src="./js/jquery.blockUI.js"></script>

<script type="text/javascript">

function clickMe(){
	//alert("clicked");
	
	$.get("addContact.html",{data:'data'},function(data){
		document.write(data);
		document.close();
		window.history.pushState("storage", "title", "./addContact.html");
		
	},"html");
}

function buttonclick(){

	$.get("contact.html", {}, function(data) {

		alert("button Clicked");		
	}, "html");
}


</script>

</head>  
<body>  
        <div><tiles:insertAttribute name="header" /></div>  
        <div style="float:left;padding:10px;width:15%;"><tiles:insertAttribute name="menu" /></div>  
        <div style="float:left;padding:10px;width:80%;border-left:1px solid pink;">  
        <tiles:insertAttribute name="body" /></div>  
        <div style="clear:both"><tiles:insertAttribute name="footer" /></div>  
  
</body>  
</html>  