<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <!--<h1>ORDER SCHEDULE</h1>-->
    <xsl:apply-templates select="/OrderList"/>
  </xsl:template>

  <xsl:template match="/OrderList">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Tên đơn hàng</th>
          <th scope="col">Lịch định kỳ</th>
          <th scope="col">Sản phẩm</th>
          <th scope="col">Tổng số phụ</th>          
          <th scope="col">Kích hoạt</th>
          <th scope="col">Sửa</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="Order">
          <tr>
            <th scope="row">
              <xsl:value-of select="position()"/>
            </th>
            <td>
              <xsl:value-of select="OrderName"/>
            </td>
            <td>
              <xsl:choose>
                <xsl:when test="FrequencyType = 1">
                  Sau mỗi <xsl:value-of select="DailyFrequency"/> ngày
                </xsl:when>
                <xsl:when test="FrequencyType = 2">
                  Thứ <xsl:value-of select="WeeklyDayOfWeeks"/> sau mỗi <xsl:value-of select="WeeklyFrequency"/> tuần
                </xsl:when>
                <xsl:when test="FrequencyType = 3">
                  Ngày <xsl:value-of select="MonthlyDay"/> sau mỗi <xsl:value-of select="MonthlyFrequency"/> tháng
                </xsl:when>                
              </xsl:choose>
            </td>
            <td>            
              <xsl:for-each select="Products/Product">
                <xsl:value-of select="ProductName"/> x <xsl:value-of select="ProductQuantity"/><br/> 
              </xsl:for-each>
            </td>
            <td>
              <xsl:value-of select="Subtotal"/>
            </td>            
            <td>
              <xsl:choose>
                <xsl:when test="OrderStatus = 'False'">
                  <input type="checkbox" runat="server" onclick="return false;"/>
                </xsl:when>                
                <xsl:when test="OrderStatus = 'True'">
                  <input type="checkbox" runat="server" onclick="return false;" checked="true"/>  
                </xsl:when>
              </xsl:choose>
            </td>
            <td>
              <a href="{SiteRoot}/Account/OrderScheduleEdit.aspx?scheduleid={OrderScheduleID}">Sửa</a>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
  
  <!--<xsl:template match="/Test">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="BasicUser">
          <tr>
            <th scope="row">
              <xsl:value-of select="position()"/>
            </th>
            <td>
              <xsl:value-of select="Name"/>
            </td>
            <td>
              <xsl:value-of select="Email"/>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>-->
  
</xsl:stylesheet>