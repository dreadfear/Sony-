<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates select="/OrderItemList"/>
  </xsl:template>

  <xsl:template match="/OrderItemList">
    <xsl:variable name="OrderScheduleID" select="OrderScheduleID" />
    <div id="order-items-table">
      <input type="hidden" id="order-item-count" name="order-item-count" value="{count(OrderItem)}" runat="server"/>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Giá</th>
            <th scope="col">Khuyến mãi</th>
            <th scope="col">Tổng cộng</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <xsl:for-each select="OrderItem">
            <tr>
              <td>
                <xsl:value-of select="Title"/>
              </td>
              <td>
                <input class="order-item-quantity" type="text" value="{Quantity}">
                  <xsl:attribute name="data-productid">
                    <xsl:value-of select="ProductId"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="data-scheduleid">
                    <xsl:value-of select="$OrderScheduleID"></xsl:value-of>
                  </xsl:attribute>                
                </input>
              </td>
              <td>
                <xsl:value-of select="Price"/>
              </td>
              <td>
                <xsl:value-of select="DiscountAmount"/>
              </td>
              <td>
                <xsl:value-of select="OrderTotal"/>
              </td>
              <td>
                <a href="#" onclick="AjaxCheckout.deletescheduleitem(this);return false;">
                  <xsl:attribute name="data-productid">
                    <xsl:value-of select="ProductId"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="data-scheduleid">
                    <xsl:value-of select="$OrderScheduleID"></xsl:value-of>
                  </xsl:attribute>
                  Xóa
                </a>           
              </td>
            </tr>
          </xsl:for-each>
        </tbody>
      </table>
    </div>
  </xsl:template>

</xsl:stylesheet>
