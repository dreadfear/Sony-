<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="table-responsive">
      <table class="table">
        <tbody>
          <xsl:apply-templates select="/ProductCommentList/ProductComment"></xsl:apply-templates>
        </tbody>
      </table>
    </div>
  </xsl:template>
  <xsl:template match="ProductComment">
    <tr>
      <td>
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"/>
          </xsl:attribute>
        </img>
      </td>
      <td>
        <div class="infomation">
          <a href="#">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"/>
            </xsl:attribute>
            <p class="product-name">
              <xsl:value-of select="Title"/>
            </p>
          </a>
          <p class="line-1 date">
            <xsl:value-of select="CreateDate"/>
          </p>
          <p class="review-title">
            <span>
              <xsl:value-of select="RatingText"/>
            </span>
            <div class="rating">
              <div itemprop="reviewRating" itemtype="http://schema.org/Rating">
                <meta itemprop="ratingValue" content="3">
                  <xsl:attribute name="content">
                    <xsl:value-of select="Rating"/>
                  </xsl:attribute>
                </meta>
              </div>
                
              <span class="rating-content">
                <xsl:attribute name="data-rating">
                  <xsl:value-of select="Rating"/>
                </xsl:attribute>
              </span>
            </div>
            <span class="text-success">Đã duyệt </span>
          </p>
          <div class="description">
            <xsl:value-of select="Comment"/>
          </div>
        </div>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
