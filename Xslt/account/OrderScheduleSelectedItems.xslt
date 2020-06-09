<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <style>
      .card {
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
      transition: 0.3s;
      }

      .card:hover {
      box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
      }

      .container {
      padding: 2px 16px;
      }
    </style>
    <xsl:apply-templates select="/SelectedItemList"/>
  </xsl:template>

  <xsl:template match="/SelectedItemList">
    <xsl:variable name="OrderScheduleID" select="OrderScheduleID" />
    <xsl:for-each select="SelectedItem">
      <div class="card col-6">
        <xsl:value-of select="Title"/>
        <br/>
        <xsl:value-of select="Price"/>
        <br/>
        <a href="#" data-id="{ProductId}" onclick="AjaxCheckout.unselectitems(this);return false;">X</a>
      </div>
    </xsl:for-each>
    <hr/>
    <xsl:if test="count(SelectedItem) > 0">
      <div id="confirm-selected">
        <a href="#" onclick="AjaxCheckout.addAllProductToOrderSchedule({$OrderScheduleID});return false;">Xác nhận</a>
      </div>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
