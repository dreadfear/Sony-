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
				<section class="insight-detail-1 insight-detail-section">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">
				<section class="insight-detail-2 insight-detail-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>


						</div>
						<div class="wrapper">
							<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>

						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<section class="insight-detail-product-related insight-detail-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">

								<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>

							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:if test="Url !='#'">
				<section class="link-banner insight-detail-banner-2">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-qoutes insight-detail-section">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<section class="insight-detail-3 insight-detail-section">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode='News-7'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-8'></xsl:apply-templates>

			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-9'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=9">
			<xsl:if test="Url !='#'">

				<xsl:apply-templates select="News" mode='News-10'></xsl:apply-templates>

			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=10">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-11'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=11">
			<xsl:if test="Url !='#'">
				<section class="insight-detail-4 insight-detail-section">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode='News-12'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
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
		<div class="image-wrapper">
			<img class="lazyload">
			<xsl:attribute name="data-src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<xsl:if test="position()> 0 and  position() &lt; 4">
			<div class="col w-full sm:w-1/2 lg:w-4/12">
				<div class="col-match-height">
					<div class="figure-insight-detail">
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
							<div class="title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<xsl:if test="position()=4">

			<xsl:if test="FileUrl !='#'">
				<div class="figure-media video">
					<div class="figure-image">
						<div class="wrapper">
							<xsl:if test="FileUrl != ''">
								<div class="play">
									<div class="play__icon"></div>
									<video playsinline="" loop="">
										<source type="video/mp4">
										<xsl:attribute name="src">
											<xsl:value-of select="FileUrl" disable-output-escaping="yes"></xsl:value-of>
										</xsl:attribute>
										</source>
									</video>
								</div>
							</xsl:if>
						</div>
					</div>

				</div>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

			</xsl:if>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<div class="swiper-slide">
			<div class="figure-product-related-sample">
				<div class="figure-image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
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
								<xsl:value-of select="SubTitle"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</h3>
				</div>
				<div class="button-wrapper-center"><a class="btn btn-view-more">

						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<span>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of>
						</span>
					</a></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="button-wrapper-center"><a class="btn btn-primary yellow">
				<xsl:attribute name="href">
					<xsl:value-of select="SubTitle"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ContactText"></xsl:value-of>
				</span>
			</a></div>
	</xsl:template>
	<xsl:template match="News" mode='News-6'>
		<div class="qoutes-text">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h2>
		</div>
		<div class="caption">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-7'>
		<div class="col w-full lg:w-1/2 ">
			<div class="head-title text-left">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="zone-description">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
		<div class="col w-full lg:w-1/2 ">
			<div class="image-wrapper">

				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>

			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-8'>
		<section class="insight-detail-text insight-detail-section">
			<div class="container">
				<div class="head-title text-left">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
		<section class="insight-detail-image">
			<div class="img-wrapper">

				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>

			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-9'>

		<section class="insight-detail-text insight-detail-section insight-detail-text-2">
			<div class="container">
				<div class="head-title text-left">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
		<section class="insight-detail-image">
			<div class="img-wrapper">
				<img class='lazyload'>
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="News" mode='News-10'>
		<section class="insight-detail-5 insight-detail-section">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-1/2 ">
						<div class="image-wrapper">


							<img class="lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
					</div>
					<div class="col w-full lg:w-1/2 ">
						<div class="head-title text-left">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="zone-description">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="insight-detail-text insight-detail-section insight-detail-6">
			<div class="container">
				<div class="head-title text-left">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-11'>
		<section class="insight-detail-image">
			<div class="img-wrapper">

				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>

			</div>
		</section>
		<section class="insight-detail-text insight-detail-section insight-detail-7">
			<div class="container">
				<div class="head-title text-left">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-12'>
		<div class="col w-full lg:w-1/2 ">
			<div class="head-title text-left">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="zone-description">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
		<div class="col w-full lg:w-1/2 ">
			<div class="image-wrapper">
				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
