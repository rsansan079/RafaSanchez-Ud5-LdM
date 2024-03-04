<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:variable name="ultimoAutor">
    <xsl:for-each select="/libreria/libro">
      <xsl:sort select="autor" order="descending"/>
      <xsl:if test="position() = 1">
        <xsl:value-of select="autor"/>
      </xsl:if>
    </xsl:for-each>
  </xsl:variable>
  <xsl:template match="/">
    <html>
      <body>
        <h2>Libros con coste superior a 12€ del autor más reciente</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Título</th>
            <th>Autor</th>
            <th>Editor</th>
            <th>ISBN</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="/libreria/libro[precio > 12 and autor = $ultimoAutor]">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="editor"/></td>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="precio"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>