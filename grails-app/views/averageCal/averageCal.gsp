<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>List Cars</title>
</head>
<body>
	<div class="body">
		<table>
			<tr>
				<th>Math</th>
				<th>Science</th>
				<th>English</th>
				<th>Average</th>
			</tr>
			<g:each var="avg" in="${avgs}">
				<tr>
					<td>
						${avg.math}
					</td>
					<td>
						${avg.science}
					</td>
					<td>
						${avg.english}
					</td>
			
			</g:each>
			
			<g:each var="result" in="${results}">
				<td>
					${result}
				</td>
			</g:each>
			
			</tr>
		</table>
		

	</div>
</body>
</html>