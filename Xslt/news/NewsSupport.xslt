<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="sony-support-detail">
            <div class="container">
                <h1 class="head-title text-center"><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
                <div class="row">
                    <div class="col w-full lg:w-1/2">
                        <div class="image">
                            <xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
                            
                        </div>
                    </div>
                    <div class="col w-full lg:w-1/2">
                        <div class="full-content">
                            <xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div class="main-toggle">
                    <xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
                    
                </div>
            </div>
        </section>  
    </xsl:template>
    <xsl:template match="NewsImages">
        <xsl:if test="position()=1">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </xsl:if>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="toggle-item">
            <div class="title"><span><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></span><em class="lnr lnr-chevron-down"></em></div>
            <article>
                <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
            </article>
        </div>
    </xsl:template>
</xsl:stylesheet>