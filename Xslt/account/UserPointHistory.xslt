<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>


  <xsl:template match="/">
    <div class="table-responsive">
      <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th class="text_left">
                Mã đơn hàng
              </th>
              <th class="text_center">
                Ngày đặt hàng
              </th>
              <th class="text_center">
                Mã trạng thái
              </th>
              <th class="text_right">
                Số tiền
              </th>
              <th class="text_right">
                Điểm thưởng
              </th>
              <th class="text_center">
                #
              </th>
            </tr>
          </thead>
          <tbody>
            <xsl:apply-templates select="/UserPointList/UserPoint"></xsl:apply-templates>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="UserPoint">
    <tr>
      <td>
        <!--<span>
        </span>-->
        <xsl:value-of select="OrderCode"></xsl:value-of>
      </td>

      <td>
        <xsl:value-of select="DateCreated"></xsl:value-of>
      </td>

      <td>
        <xsl:value-of select="OrderStatus"></xsl:value-of>
      </td>

      <td>
        <xsl:value-of select="Amount"></xsl:value-of>
      </td>

      <td>
        <xsl:value-of select="Point"></xsl:value-of>
      </td>

      <td>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="OrderURL"></xsl:value-of>
          </xsl:attribute>
          Chi tiết
        </a>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
