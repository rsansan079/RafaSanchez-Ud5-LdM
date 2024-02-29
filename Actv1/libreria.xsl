<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Mi biblioteca personal</title>
</head>
<body>
<table> 
<tr bgcolor="#887799">
<th>ISBN</th>
<th>Título</th>
<th>Autor</th>
<th>Editor</th>
<th>Número de Páginas</th>
<th>Precio</th> 
</tr>
<xsl:for-each select="libreria/libro">
<tr>
<td><xsl:value-of select="isbn"/></td>
<td><xsl:value-of select="titulo"/></td>
<td><xsl:value-of select="autor"/></td>
<td><xsl:value-of select="precio"/></td> 
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
