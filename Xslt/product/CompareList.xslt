<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <!-- <xsl:if test="/ProductList/CompareCount > 0"> -->
      <div class="container">
				<h2 class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/PCText"></xsl:value-of>
				</h2>
				<div class="btn-remove-compare"><em class="lnr lnr-cross"></em></div>
				<div class="row">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>

					<!-- <xsl:variable name="CompareNum"> -->
						<!-- <xsl:value-of select="count(/ProductList/Compared)"></xsl:value-of> -->
					<!-- </xsl:variable> -->
				</div>
				<div class="button-wrapper-center"><a class="btn btn-primary yellow" href="/Product/Compare.aspx">
						<!-- <xsl:attribute name="href"> -->
							<!-- <xsl:value-of select="CompareListUrl" /> -->
						<!-- </xsl:attribute> -->
						<span>
							<xsl:value-of disable-output-escaping="yes" select="/ProductList/CompareText">
							</xsl:value-of>
						</span></a>
				</div>
			</div>
    <!-- </xsl:if> -->
  </xsl:template>

  
  
  <xsl:template match="Product">
		<div class="col w-4/12  md:w-3/12">
			<div class="col-match-height">
				<div class="figure-product">
					<div class="figure-image">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url" />
							</xsl:attribute>
							<img alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl" />
							</xsl:attribute>
							</img>
						</a></div>
					<div class="figcaption">
						<div class="title">
							<h2>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url" />
									</xsl:attribute>
									<xsl:value-of select="Title" />
								</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<xsl:if test="position() &lt; 3 and position() = last()">
			<div class="col w-4/12  md:w-3/12">
				<div class="col-match-height">
					<div class="figure-add-more"><em class="lnr lnr-cross"></em></div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
  
  
  
  
  
  
  
  
  

  <!--<xsl:template match="/">
    <xsl:if test="/ProductList/CompareProductsCount > 0">
    <section class="inec-course-4 main-section">
      <div class="container">
        <div class="main-compare">
          <xsl:apply-templates select="/ProductList/Compared"></xsl:apply-templates>
          <div class="compare">
            <a href="#">
              <em class="mdi mdi-repeat"></em>
              <span>So sánh</span>
            </a>
          </div>
        </div>
      </div>
    </section>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Compared">
    <div class="compare">
      <div class="item">
        <figure>
          <div class="image">
            --><!--<img src="/Data/Sites/1/media/course/item-1.png" alt="alt" />--><!--
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
          </div>
          <figcaption>
            <h3>
              --><!--Hệ thống thông tin--><!--
              <xsl:value-of select="Title"></xsl:value-of>
            </h3>
            <div class="price">
              <p>
                Tổng chi phí :<span>
                  <xsl:value-of select="Price"></xsl:value-of>
                </span>
              </p>
            </div>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>-->
</xsl:stylesheet>
