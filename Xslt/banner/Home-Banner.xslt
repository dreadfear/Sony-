<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="primary-banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="banner-image">
					<a class="lazyload">
						<xsl:if test="Url !=''">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-bg">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					
					</a>
				</div>
				<xsl:if test="Title !=''">

					<div class="container">
						<div class="box-content">
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
							</div>
							<xsl:if test="Url !=''">
								<a class="btn btn-primary">
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>

									<span>
										<xsl:value-of disable-output-escaping="yes" select="/BannerList/VMText">
										</xsl:value-of>
									</span>
								</a>
							</xsl:if>
						</div>
					</div>
				</xsl:if>

			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
