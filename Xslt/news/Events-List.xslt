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
				<section class="event-section event-display-1">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">
				<section class="event-section even event-display-2">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<section class="link-banner solution-detail-banner event-display-3">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:if test="Url !='#'">
				<section class="section-card-product four-item-section event-section event-display-4">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
						<div class="product-section-include">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="section-card-product three-item-section event-section event-display-5">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates>
						<div class="product-section-include">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode='News-7'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<section class="section-card-product three-item-section event-section event-display-6">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-8'></xsl:apply-templates>
						<div class="product-section-include">
							<div class="swiper-container">
								<div class="swiper-wrapper">

									<xsl:apply-templates select="News" mode='News-9'></xsl:apply-templates>
								</div>
							</div>
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
		<div class="zone-description text-center">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="col w-full lg:w-1/2">
			<div class="head-title">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<div class="zone-description">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
			<xsl:if test="SubTitle !=''">


				<div class="button-wrapper-left"><a class="btn btn-view-more">

						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>

						<span>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of>
						</span>
					</a>
				</div>
			</xsl:if>
		</div>
		<div class="col w-full lg:w-1/2">
			<div class="image-wrapper opacity">
				<img class='lazyload'>
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
	<xsl:template match="News" mode='News-3'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<xsl:if test="SubTitle !=''">
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<xsl:if test="position()=1">
			<div class="row">
				<div class="col w-full lg:w-1/2">
					<div class="image-wrapper opacity">

						<img class='lazyload'>
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col w-full lg:w-1/2">
					<div class="head-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="zone-description">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
					<xsl:if test="SubTitle !=''">


						<div class="button-wrapper-left"><a class="btn btn-view-more">

								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
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
					</xsl:if>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<xsl:if test="position()!=1">

			<div class="swiper-slide">
				<div class="figure-product-seciton">
					<div class="figure-image"><a>
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
						</a></div>
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
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
					<xsl:if test="SubTitle!=''">
						<div class="button-wrapper-center"><a class="btn btn-view-more">
								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</span>
							</a></div>
					</xsl:if>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-6'>
		<xsl:if test="position()=1">

			<div class="row">
				<div class="col w-full lg:w-1/2">
					<div class="head-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="zone-description">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
					<xsl:if test="SubTitle !=''">


						<div class="button-wrapper-left"><a class="btn btn-view-more">

								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
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
					</xsl:if>
				</div>
				<div class="col w-full lg:w-1/2">
					<div class="image-wrapper opacity">


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
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-7'>
		<xsl:if test="position()!=1">
			<div class="swiper-slide">
				<div class="figure-product-seciton">
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
					<xsl:if test="SubTitle!=''">
						<div class="button-wrapper-center"><a class="btn btn-view-more">
								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText">
									</xsl:value-of>
								</span>
							</a></div>
					</xsl:if>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-8'>
		<xsl:if test="position()=1">
			<div class="row">
				<div class="col w-full lg:w-1/2">
					<div class="head-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="zone-description">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
					<xsl:if test="SubTitle !=''">


						<div class="button-wrapper-left"><a class="btn btn-view-more">

								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
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
					</xsl:if>
				</div>
				<div class="col w-full lg:w-1/2">
					<div class="image-wrapper opacity">


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
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-9'>
		<xsl:if test="position()!=1">
			<div class="swiper-slide">
				<div class="figure-product-seciton">
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
					<xsl:if test="SubTitle!=''">
						<div class="button-wrapper-center"><a class="btn btn-view-more">
								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText">
									</xsl:value-of>
								</span>
							</a></div>
					</xsl:if>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
