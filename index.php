
<!DOCTYPE html>
<!-- BEGIN HEAD -->
<head>
	<title>Family Tree</title>

	<script src="jquery-2.1.4.js" type="text/javascript"></script>
	<link href="bootstrap.css" rel="stylesheet" type="text/css"/>
	<link href="bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
	
	<script>
    function load() {
        
        var xhttp;
        if (window.XMLHttpRequest) {
            // code for modern browsers
            xhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function() {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                //alert(xhttp.responseText)
				document.getElementById('familydiv').innerHTML = xhttp.responseText;
            }
        };
        xhttp.open("POST", "familydata.php?status=getfamilydata", true);
        xhttp.send();
    }
    window.onload = load;

	</script>
	<style>
		h1 {
			text-align: center;
			padding: 10px 0;
		}
	</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<h1>Family Information</h1>
	<div id="familydiv">
	</div>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   


	<script src="bootstrap.min.js" type="text/javascript"></script>

	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>