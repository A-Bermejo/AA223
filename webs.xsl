<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <Webs>
            <xsl:for-each select="/response/row">
                <xsl:copy>
                    <xsl:for-each select="row">
                        <xsl:sort select="mes"/>

                        <xsl:copy>
                            <xsl:if test="any = 2020 ">
                                <xsl:attribute name="web">

                                    <xsl:value-of select="web"/>
                                </xsl:attribute>
                                <xsl:attribute name="url">
                                    <xsl:value-of select="url"/>
                                </xsl:attribute>
                                <xsl:element name="mes">
                                    <xsl:value-of select="mes"/>
                                </xsl:element>
                                <xsl:element name="sessions">
                                    <xsl:value-of select="sessions"/>
                                </xsl:element>
                                <xsl:element name="durada_mitjana_de_la_sessi_en_minuts">
                                    <xsl:value-of select="durada_mitjana_de_la_sessi_en_minuts"/>
                                </xsl:element>
                            </xsl:if>
                        </xsl:copy>

                    </xsl:for-each>
                </xsl:copy>
            </xsl:for-each>
        </Webs>
    </xsl:template>
</xsl:stylesheet>