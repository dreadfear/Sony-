<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="table-responsive">
      <table class="table">
        <tbody>
          <xsl:apply-templates select="/NotificationList/Notification"></xsl:apply-templates>
        </tbody>
      </table>
    </div>
  </xsl:template>
  <xsl:template match="Notification">
    <tr>
      <td class="date">
        <xsl:value-of select="CreateDate"/>
      </td>
      <td class="type">
        <xsl:choose>
          <xsl:when test="Type = 1">
            <img src="/Data/Sites/1/media/img/notification/type-1.png"></img>
          </xsl:when>
          <xsl:when test="Type = 2">
            <img src="/Data/Sites/1/media/img/notification/type-2.png"></img>
          </xsl:when>
          <xsl:when test="Type = 3">
            <img src="/Data/Sites/1/media/img/notification/type-3.png"></img>
          </xsl:when>
          <xsl:otherwise>
            <img src="/Data/Sites/1/media/img/notification/type-default.png"></img>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="title">
        <xsl:value-of select="Title"/>
      </td>
      <td class="content">
        <xsl:value-of select="Description" disable-output-escaping="yes"/>
      </td>
      <td class="action">
        <a href="#" onclick="AjaxAccount.deletemynotification(this);return false;">
          <xsl:attribute name="data-id">
            <xsl:value-of select="RowId"/>
          </xsl:attribute>
          Xóa
        </a>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
