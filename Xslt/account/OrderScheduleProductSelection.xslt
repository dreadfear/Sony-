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
    <xsl:apply-templates select="/ProductList"/>
  </xsl:template>

  <xsl:template match="/ProductList">
    <div id="product-selection">
      <div id="product-list" class="row">
        <xsl:for-each select="Product">
          <div class="card col-6">
            <img src="/Data/Sites/1/Product/{ID}/thumbs/{Thumbnail}" alt="X"/>
            <xsl:value-of select="Title"/>
            <br/>
            <xsl:value-of select="Price"/>
            <br/>
            <!--<input type="button" ID="select-{ID}" class="btn btn-primary btn-select" value="Chọn" style="background:white"/>-->
            <a href="#" data-id="{ID}" id="unselect-{ID}">
              
              <xsl:if test="Selected = 'true'">
                <xsl:attribute name="class">
                  <xsl:text>active</xsl:text>
                </xsl:attribute>  
                <xsl:attribute name="onclick">
                  <xsl:text>AjaxCheckout.unselectitems(this);return false;</xsl:text>
                </xsl:attribute>
                <xsl:text>Bỏ chọn</xsl:text>
              </xsl:if>
              
              <xsl:if test="Selected = 'false'">
                <xsl:attribute name="onclick">
                  <xsl:text>AjaxCheckout.selectitems(this);return false;</xsl:text>
                </xsl:attribute>
                <xsl:text>Chọn</xsl:text>
              </xsl:if>
              
            </a>
          </div>
        </xsl:for-each>
        <!--<script>
              $(document).ready(function(){
                  $("#modal").trigger('click'); 
              });
              $('.btn-select').click(function(e){
                  e.stopPropagation();
                  e.stopImmediatePropagation();
                  if(sessionStorage.getItem(this.id)=="true")
                  {                       
                    $(this).css('background','white');
                    AjaxCheckout.unselectitems(this);
                    sessionStorage.setItem(this.id, false);
                  } 
                  else if(sessionStorage.getItem(this.id)=="false" || sessionStorage.getItem(this.id)==null) 
                  {
                    $(this).css('background','red');
                    AjaxCheckout.selectitems(this);
                    sessionStorage.setItem(this.id, true);
                  }
              });
            </script>-->
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
