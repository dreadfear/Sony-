<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates select="/OrderList"/>
  </xsl:template>

  <xsl:template match="/OrderList">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Tên đơn hàng</th>
          <th scope="col">Ngày tạo</th>
          <th scope="col">Sản phẩm</th>
          <th scope="col">Tổng số phụ</th>
          <th scope="col">Xác nhận</th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="Order">
          <xsl:if test="ConfirmedDate = ''">
            <tr>
              <th scope="row">
                <xsl:value-of select="position()"/>
              </th>
              <td>
                <xsl:value-of select="OrderName"/>
              </td>
              <td>
                <xsl:value-of select="CreatedDate"/>
              </td>
              <td>
                <xsl:for-each select="Products/Product">
                  <xsl:value-of select="ProductName"/> x <xsl:value-of select="ProductQuantity"/><br/> 
                </xsl:for-each>
              </td>
              <td>
                <xsl:value-of select="OrderSubTotal"/>
              </td>
              <td>
                <a href="#" onclick="AjaxCheckout.confirmation(this);return false;">
                  <xsl:attribute name="data-itemid">
                    <xsl:value-of select="ItemID"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="data-id">
                    <xsl:value-of select="OrderScheduleID"></xsl:value-of>
                  </xsl:attribute>
                  Xác nhận
                </a>
              </td>
              <td>
                <a href="#" onclick="AjaxCheckout.confirmationdelete(this);return false;">
                  <xsl:attribute name="data-itemid">
                    <xsl:value-of select="ItemID"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="data-id">
                    <xsl:value-of select="OrderScheduleID"></xsl:value-of>
                  </xsl:attribute>
                  Xóa
                </a>
              </td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>

</xsl:stylesheet>