<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Adresar</title>
      </head>
      <body>
        <h2>Osobe</h2>
        <table width="100%" border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Ime i Prezime</th>
            <th style="text-align:left">Datum rodjenja</th>
            <th style="text-align:left">Adresa</th>
            <th style="text-align:left">Telefon</th>
            <th style="text-align:left">Email</th>
          </tr>
          <xsl:for-each select="Adresar/Osoba/DatumRodjenja">
            <xsl:if test="Godina[Godina &gt;1991]">
          
              <tr>
                <td>
                  <xsl:value-of select="PunoIme/Ime"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="PunoIme/SrednjeIme"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="PunoIme/Prezime"/>
                </td>
                <td>
                  <xsl:value-of select="DatumRodjenja/Dan"/>
                  <xsl:text>.</xsl:text>
                  <xsl:value-of select="DatumRodjenja/Mesec"/>
                  <xsl:text>.</xsl:text>
                  <xsl:value-of select="DatumRodjenja/Godina"/>
                </td>
                <td>
                  <xsl:value-of select="Adresa/Ulica"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Broj"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Grad"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Drzava"/>
                </td>
                <td>
                  <xsl:value-of select="Telefon"/>
                </td>
                <td>
                  <xsl:for-each select="Email">
                    <xsl:value-of select="."/>
                    <xsl:text> </xsl:text>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
           
          </xsl:for-each>

        </table>

        <br></br>
        <br></br>
        <h2>Kompanije</h2>
        <table width="100%" border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Naziv</th>
            <th style="text-align:left">Adresa</th>
            <th style="text-align:left">Telefon</th>
            <th style="text-align:left">Email</th>
          </tr>
          <xsl:for-each select="Adresar/Kompanija">
            <xsl:if test="Adresa[@status='stalna']">
              <tr>
                <td>
                  <xsl:value-of select="Naziv"/>
                </td>
                <td>
                  <xsl:value-of select="Adresa/Ulica"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Broj"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Grad"/>
                  <xsl:text>, </xsl:text>
                  <xsl:value-of select="Adresa/Drzava"/>
                </td>
                <td>
                  <xsl:value-of select="Telefon"/>
                </td>
                <td>
                  <xsl:for-each select="Email">
                    <xsl:value-of select="."/>
                    <xsl:text>  </xsl:text>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

        <p>----------------------------------------------------------------------</p>

        <h2>Osobe</h2>
        <table width="100%" border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Ime i Prezime</th>
            <th style="text-align:left">Datum rodjenja</th>
            <th style="text-align:left">Adresa</th>
            <th style="text-align:left">Telefon</th>
            <th style="text-align:left">Email</th>
          </tr>
          <xsl:for-each select="Adresar/Osoba">
            <xsl:if test="starts-with(PunoIme/Prezime,'M')">

            <tr>
              <td>
                <xsl:value-of select="PunoIme/Ime"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="PunoIme/SrednjeIme"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="PunoIme/Prezime"/>
              </td>
              <td>
                <xsl:value-of select="DatumRodjenja/Dan"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="DatumRodjenja/Mesec"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="DatumRodjenja/Godina"/>
              </td>
              <td>
                <xsl:value-of select="Adresa/Ulica"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Broj"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Grad"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Drzava"/>
              </td>
              <td>
                <xsl:value-of select="Telefon"/>
              </td>
              <td>
                <xsl:for-each select="Email">
                  <xsl:value-of select="."/>
                  <xsl:text> </xsl:text>
                </xsl:for-each>
              </td>
            </tr>
            </xsl:if>
          </xsl:for-each>

        </table>

        <br></br>
        <br></br>
        <h2>Kompanije</h2>
        <table width="100%" border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Naziv</th>
            <th style="text-align:left">Adresa</th>
            <th style="text-align:left">Telefon</th>
            <th style="text-align:left">Email</th>
          </tr>
          <xsl:for-each select="Adresar/Kompanija[string-length(Naziv) &gt;6]">
            <tr>
              <td>
                <xsl:value-of select="Naziv"/>
              </td>
              <td>
                <xsl:value-of select="Adresa/Ulica"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Broj"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Grad"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Adresa/Drzava"/>
              </td>
              <td>
                <xsl:value-of select="Telefon"/>
              </td>
              <td>
                <xsl:for-each select="Email">
                  <xsl:value-of select="."/>
                  <xsl:text>  </xsl:text>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
