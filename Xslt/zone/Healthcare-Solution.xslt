<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="healthcare-display-1">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

			</div>
		</section>

		<section class="healthcare-solution">
			<div class="container">
				<div class="head-title text-center">
					<xsl:apply-templates select="/ZoneList/Zone" mode='Title'></xsl:apply-templates>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone" mode='Child'></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<xsl:if test="position()=1">
			<div class="head-title text-center">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<div class="zone-description">
				<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>.
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode='Child'>
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Child-2'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>


	<xsl:template match="Zone" mode="Child-2">
		<xsl:if test="position()=2">
			<xsl:apply-templates select="Zone" mode='Child-3'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>


	<xsl:template match="Zone" mode='Title'>
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Title-2'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Title-2'>
		<xsl:if test="position()=2">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode='Child-3'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="col-match-height">
				<div class="figure-healthcare">
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
						</a>
					</div>
					<div class="figcaption">
						<h3><a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a></h3>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="button-wrapper-center"><a class="btn btn-view-more blue">

								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText">
									</xsl:value-of>
								</span>
							</a></div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>