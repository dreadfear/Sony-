<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="top-banner" data-anchor="home">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="container-fluid">
				<div class="wrapper">
					<a>
						<xsl:if test="Url !=''">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class='image-1 lazyload'>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
						<xsl:if test="ThumbnailUrl !=''">

							<img class='image-2 lazyload'>
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>

						</xsl:if>
					</a>

				</div>
				<xsl:if test="Title !=''">
					<div class="container">
						<div class="caption"><span class="title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</span>


							<xsl:if test="Description!=''">
								<span class="text">
									<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
								</span>
							</xsl:if>
							<xsl:if test="Url !=''">
								<div class="button-wrapper-left">
									<a class="btn btn-primary yellow">
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<span>
											<xsl:value-of disable-output-escaping="yes"
												select="/BannerList/ContactText"></xsl:value-of>
										</span>
									</a></div>
							</xsl:if>
						</div>
					</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
