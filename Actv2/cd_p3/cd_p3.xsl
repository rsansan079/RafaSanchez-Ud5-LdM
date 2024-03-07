<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="selloSeleccionado">Atlantic Records</xsl:param>

<xsl:template match="/">
  <html>
  <head>
    <title>Canciones del sello <xsl:value-of select="$selloSeleccionado"/></title>
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
    <h2>Canciones del sello <xsl:value-of select="$selloSeleccionado"/></h2>
    <table>
      <tr>
        <th>Título de la canción</th>
        <th>Artista</th>
        <th>Álbum</th>
        <th>Año de publicación</th>
      </tr>
      <xsl:for-each select="catalogo/cd[sello_discografico=$selloSeleccionado]">
        <xsl:variable name="cd" select="catalogo/cd"/>
        <tr>
          <td><xsl:value-of select="canciones/cancion/titulo"/></td>
          <td><xsl:value-of select="artista"/></td>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="ano_publicacion"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>