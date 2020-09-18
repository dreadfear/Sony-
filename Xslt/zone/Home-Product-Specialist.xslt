<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="product-specialist home-product">
			<div class="container">
				<h2 class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="swiper-product-specialist">
					<xsl:if test="count(/ZoneList/Zone) &lt; 6">
						<div class="nav-arrow-prev"><span class="lnr lnr-chevron-left"></span></div>
						<div class="nav-arrow-next"><span class="lnr lnr-chevron-right"></span></div>
					</xsl:if>
					<div class="swiper-pagination"></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ZoneList/Zone" mode='Parent'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode='Parent'>
		<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="figure-product-home">
					<div class="figure-image">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img class='lazyload'>
							<xsl:attribute name="data-src">
								<xsl:value-of select="SecondImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a></div>
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
							</a></h3>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
