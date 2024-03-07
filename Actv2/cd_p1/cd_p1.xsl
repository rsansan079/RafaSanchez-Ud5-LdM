<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Lista de CDs de Música</title>
    <style>
      table {
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
    </style>
  </head>
  <body>
    <h2>Lista de CDs de Música</h2>
    <table>
      <tr>
        <th>Título del álbum</th>
        <th>Artista</th>
        <th>Canciones</th>
        <th>Sello discográfico</th>
        <th>Año de publicación</th>
      </tr>
      <xsl:for-each select="catalogo/cd">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="artista"/></td>
          <td>
            <xsl:for-each select="canciones/cancion">
              <xsl:value-of select="titulo"/>
              <xsl:if test="position() != last()">, </xsl:if>
            </xsl:for-each>
          </td>
          <td><xsl:value-of select="sello_discografico"/></td>
          <td><xsl:value-of select="ano_publicacion"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>