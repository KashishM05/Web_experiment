<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Book List</title>
        <style>
          body {font-family: Georgia;}
          table {border-collapse: collapse; width: 80%; margin: 20px auto;}
          th, td {border: 1px solid black; padding: 8px; text-align: left;}
          th {background-color:rgb(88, 222, 232);}
        </style>
      </head>
      <body>
        <h2 style="text-align:center;">Library Book List</h2>
        <table>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
            <th>Genre</th>
          </tr>
          <xsl:for-each select="library/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="year"/></td>
              <td><xsl:value-of select="genre"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>