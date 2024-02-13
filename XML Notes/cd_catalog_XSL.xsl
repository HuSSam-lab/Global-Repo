<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="/">
    <table border="3px">
        <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Price</th>
        </tr>

        <xsl:for-each select="CATALOG/CD">
        <xsl:sort data-type="number" select="PRICE" order="descending"></xsl:sort>
        <xsl:choose>
        <xsl:when test="PRICE &gt;9">
            
            <tr bgcolor="red">
            <td>
                    <xsl:value-of select="TITLE"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="ARTIST"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="PRICE"></xsl:value-of>
            </td>
            </tr>
            </xsl:when>
        <xsl:when test="PRICE &gt;8">
            
            <tr bgcolor="yellow">
            <td>
                    <xsl:value-of select="TITLE"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="ARTIST"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="PRICE"></xsl:value-of>
            </td>
            </tr>
            </xsl:when>
        <xsl:when test="PRICE &gt;7">
            
            <tr bgcolor="blue">
            <td>
                    <xsl:value-of select="TITLE"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="ARTIST"></xsl:value-of>
            </td>
            <td>
                    <xsl:value-of select="PRICE"></xsl:value-of>
            </td>
            </tr>
            </xsl:when>
        </xsl:choose>
        </xsl:for-each>
    </table>
</xsl:template>

</xsl:stylesheet>
