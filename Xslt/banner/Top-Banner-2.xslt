<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="solution-detail-1">
			<div class="container">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
		</div>
		<div class="figure-media video">
			<div class="figure-image">
				<div class="wrapper">
					<xsl:if test="Url != ''">
						<div class="play">
							<div class="play__icon"></div>
							<video playsinline="" loop="">
								<source type="video/mp4">
									<xsl:attribute name="src">
										<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</source>
							</video>
						</div>
					</xsl:if>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>