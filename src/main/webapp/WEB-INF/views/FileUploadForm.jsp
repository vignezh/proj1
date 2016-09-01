<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Upload File Request Page</title>
</head>
<body>
	<form method="post" action="upload" enctype="multipart/form-data">
		File to Upload:<input type="file" name="file" /> 
		Name:<input type="text" name="name" /> 
		<input type="submit" value="upload" />Upload the file
	</form>
</body>
</html>