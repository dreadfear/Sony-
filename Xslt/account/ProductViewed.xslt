<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="product-list">
      <ol class="list grid-view-filter ajaxresponse">
        <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
      </ol>
    </div>

  </xsl:template>
  <xsl:template match="Product">
    <li>
      <div class="product-item">
        <figure>
          <div class="img">
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
            <div class="overlay">
              <a class="view-detail" href="">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <em class="mdi mdi-eye"></em>xem sản phẩm
              </a>
            </div>
          </div>
          <figcaption>
            <a class="title" href="">
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:value-of select="Title"></xsl:value-of>
            </a>
          </figcaption>
        </figure>
      </div>
    </li>
  </xsl:template>
</xsl:stylesheet>
