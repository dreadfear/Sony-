<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone/Zone" mode="Zone1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone"  mode="Zone1">
        <section class="sony-support">
            <xsl:if test="position()&gt;1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">sony-support sony-support-2</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="container">
                <div class="head-title text-center"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
                <div class="row list-support">
                    <xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
                    
                </div>
            </div>
        </section>

    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <div class="col w-full lg:w-1/2">
            <div class="support-item">
                <div class="image">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content">
                    <h3> 
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </h3>
                    <div class="brief-content">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>