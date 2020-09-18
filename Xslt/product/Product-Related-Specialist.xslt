<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="product-related-display">
			<div class="container">
				<div class="head-title text-left">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of>
				</div>
				<div class="product-related-swiper">
					<div class="swiper-pagination"></div>
					<div class="nav-arrow-prev">
						<span class="lnr lnr-chevron-left"></span>
					</div>
					<div class="nav-arrow-next">
						<span class="lnr lnr-chevron-right"></span>
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="swiper-slide">
			<div class="figure-product-related">
				<div class="figure-image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="figcaption">
					<h3>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="tabindex">
								<xsl:text disable-output-escaping="yes">-1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="aria-hidden">
								<xsl:text disable-output-escaping="yes">true</xsl:text>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</h3>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>