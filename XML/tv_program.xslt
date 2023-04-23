<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <head>
      <title>TV Program</title>
      <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
      <h1>TV Program</h1>
      <table>
        <tr>
          <th></th>
          <th>TITLE</th>
          <th>AGE</th>
          <th>TIME</th>
          <th>LENGTH</th>
          <th>DIRECTORS</th>
          <th>YEAR</th>
        </tr>
        <xsl:for-each select="tvprogram/program">
          <xsl:if test="@type = 'movie'">
            <tr bgcolor="#b5ad6a">
              <td><img style="height:100px"><xsl:attribute name="src"><xsl:value-of select="poster"/></xsl:attribute></img></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="title/@age"/></td>
              <td><xsl:value-of select="streaming-time/@date"/><xsl:text>&#10;</xsl:text><xsl:value-of select="streaming-time"/></td>
              <td><xsl:value-of select="streaming-time/@length"/></td>
              <td><xsl:value-of select="director"/></td>
              <td><xsl:value-of select="title/@year"/></td>
            </tr>
          </xsl:if>
          <xsl:if test="@type = 'tv-series'">
            <tr bgcolor="#d0ca8c">
              <td><img style="height:100px"><xsl:attribute name="src"><xsl:value-of select="poster"/></xsl:attribute></img></td>
              <td><xsl:value-of select="title"/><xsl:text>&#10;</xsl:text><xsl:value-of select="title/@episode"/></td>
              <td><xsl:value-of select="title/@age"/></td>
              <td><xsl:value-of select="streaming-time/@date"/><xsl:text>&#10;</xsl:text><xsl:value-of select="streaming-time"/></td>
              <td><xsl:value-of select="streaming-time/@length"/></td>
              <td><xsl:value-of select="director"/></td>
              <td><xsl:value-of select="title/@year"/></td>
              
            </tr>
          </xsl:if>
          <xsl:if test="@type = 'animation'">
            <tr bgcolor="#efe9b9">
              <td><img style="height:100px"><xsl:attribute name="src"><xsl:value-of select="poster"/></xsl:attribute></img></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="title/@age"/></td>
              <td><xsl:value-of select="streaming-time/@date"/><xsl:text>&#10;</xsl:text><xsl:value-of select="streaming-time"/></td>
              <td><xsl:value-of select="streaming-time/@length"/></td>
              <td><xsl:value-of select="director"/></td>
              <td><xsl:value-of select="title/@year"/></td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>