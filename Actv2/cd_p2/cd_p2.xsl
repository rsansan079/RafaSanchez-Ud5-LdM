<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="artistaSeleccionado">Michael Jackson</xsl:param>

<xsl:template match="/">
  <html>
  <head>
    <title>Canciones de <xsl:value-of select="$artistaSeleccionado"/></title>
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
    <h2>Canciones de <xsl:value-of select="$artistaSeleccionado"/></h2>
    <table>
      <tr>
        <th>Título de la canción</th>
        <th>Duración</th>
      </tr>
      <xsl:for-each select="catalogo/cd[artista=$artistaSeleccionado]/canciones/cancion">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="duracion"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
