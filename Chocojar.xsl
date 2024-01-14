<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
	<style>
		body{
			background-color:#FFF8DC;
		}
		table{
			border: 1px solid black;
			width: 75%;
			font-family: Calibri;
		}
		
		th, td {
			border: 1px solid black;
			padding: 8px;
			work-wrap: break-word;
		}
		
		h1{
			font-family: Lora;
			font-size: 40px;
		}
		tr,td{
			text-align: center;
		}
	</style>
</head>
	<body>
	<center>
		<h1>CHOQOLICIOUS CHOCO JAR PRODUCT DETAILS</h1>
			<table border="3">
				<tr bgcolor="#835C3B">
				<th>PRODUCT  NAME</th>
				<th>PRODUCT   PRICE (RM)</th>
				<th>PRODUCT  TYPE</th>
				</tr>
				    <xsl:for-each select="program/details">
				<tr>
					<td><xsl:value-of select="productname"/></td>
					<td><xsl:value-of select="productprice"/></td>
					<td><xsl:value-of select="producttype"/></td>
				</tr>
					 </xsl:for-each>
			</table>
	</center>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>