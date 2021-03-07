<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <avatar>
            <xsl:for-each select="/avatar/temporadas">

                <xsl:copy>
                    <xsl:for-each select="temporada">

                        <xsl:copy>
                                <xsl:attribute name="number">

                                    <xsl:value-of select="temporada"/>
                                </xsl:attribute>
                            <xsl:element name="book">
                                <xsl:value-of select="libro"/>
                            </xsl:element>
                                <xsl:element name="duration">
                                    <xsl:value-of select="duracion"/>
                                </xsl:element>
                                <xsl:element name="fisrtBrodcast">
                                    <xsl:value-of select="primerEmison"/>
                                </xsl:element>
                                <xsl:element name="lastBrodcast">
                                    <xsl:value-of select="ultimaEmison"/>
                                </xsl:element>
                        </xsl:copy>
                    </xsl:for-each>
                </xsl:copy>
            </xsl:for-each>
        </avatar>
    </xsl:template>

</xsl:stylesheet>