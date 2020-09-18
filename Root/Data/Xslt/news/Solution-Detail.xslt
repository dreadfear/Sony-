<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:if test="Url !='#'">
				<section class="healthcare-display-1">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">
				<section class="healthcare-solution">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="Zone" mode='Sub-Zone'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<section class="benefits-display">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="zone-description">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:if test="Url !='#'">
				<div class="product-news-section-wrapper">
					<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
				</div>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="link-banner">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position">

		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub-Zone'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="col-match-height">
				<div class="figure-healthcare">
					<div class="figure-image opacity">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="aria-hidden">
								<xsl:text disable-output-escaping="yes">true</xsl:text>
							</xsl:attribute>
							<img class='lazyload'>
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
							</a>
						</h3>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="button-wrapper-center">
							<a class="btn btn-view-more blue">
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
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="figure-benefit">
				<div class="figure-image zoom-in">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="aria-hidden">
							<xsl:text disable-output-escaping="yes">true</xsl:text>
						</xsl:attribute>
						<img class='lazyload'>
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
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<xsl:if test="count(NewsImages) > 0">
			<section class="product-section-zone ">
				<xsl:attribute name="setBackground">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="row">
						<div class="col w-full md:w-1/2">
							<div class="figure-caption">
								<div class="head-title">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</div>
								<div class="caption">
									<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
								</div>
								<a class="btn btn-view-more">
									<xsl:attribute name="href">
										<xsl:value-of select="BriefContent"></xsl:value-of>
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
									<span>
										<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText">
										</xsl:value-of>
									</span>
								</a>
							</div>
						</div>
						<div class="col w-full md:w-1/2">
							<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position()>1">
			<div class="image-wrapper">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="aria-hidden">
						<xsl:text disable-output-escaping="yes">true</xsl:text>
					</xsl:attribute>
					<img class='lazyload'>
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="button-wrapper-center">
			<a class="btn btn-primary yellow">

				<xsl:value-of select="BriefContent"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ContactText"></xsl:value-of>
				</span>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<section class="zone-display-section">
			<xsl:attribute name="class">
				<xsl:choose>
					<xsl:when test="(position() mod 2) != 1">
						<xsl:text>zone-display-section reserve-zone</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>zone-display-section</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col w-full md:w-1/2">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<a class="btn btn-view-more">
							<xsl:attribute name="href">
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText">
								</xsl:value-of>
							</span>
						</a>
					</div>
					<div class="col w-full md:w-1/2">
						<div class="image-wrapper opacity">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>

								<xsl:attribute name="aria-hidden">
									<xsl:text disable-output-escaping="yes">true</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="href">
									<img class='lazyload'>
									<xsl:attribute name="data-src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
