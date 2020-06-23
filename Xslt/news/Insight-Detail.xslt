<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">
				<section class="insight-display-2 section-text-white insight-section text-white">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
						</div>
						<div class="view-all-list-wrapper">
							<div class="head-title text-center">Xem tất cả danh sách</div>
							<div class="button-wrapper-center">
								<div class="btn-view-more"><span>
										<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewAllText">
										</xsl:value-of>
									</span></div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>

		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<section class="insight-display-3 insight-section">
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
				<section class="insight-display-4 insight-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="swiper-insight-video">
							<div class="nav-arrow-prev"><span class="lnr lnr-chevron-left"></span></div>
							<div class="nav-arrow-next"><span class="lnr lnr-chevron-right"></span></div>
							<div class="swiper-pagination"></div>
							<div class="swiper-container">
								<div class="swiper-wrapper">

									<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="insight-display-6 insight-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
						</div>
					</div>
					<div class="view-all-list-wrapper">
						<div class="head-title text-center">Xem tất cả danh sách</div>
						<div class="button-wrapper-center"><a class="btn btn-view-more" href=""><span>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewAllText">
									</xsl:value-of>
								</span></a>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<section class="insight-display-7 insight-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:if test="Url !='#'">
				<section class="insight-display-8 insight-section text-white">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:if test="Url !='#'">
				<section class="insight-display-9 insight-section">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="sub-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="swiper-insight-video">
							<div class="nav-arrow-prev"><span class="lnr lnr-chevron-left"></span></div>
							<div class="nav-arrow-next"><span class="lnr lnr-chevron-right"></span></div>
							<div class="swiper-pagination"></div>
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

	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col w-full md:w-4/12">
			<div class="col-match-height">
				<div class="figure-insight">
					<div class="figure-image shine">
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
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>


						</h3>
					</div>
					<div class="button-wrapper-center"><a class="btn btn-view-more">

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
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="col w-full sm:w-1/2 md:w-4/12 lg:w-3/12">
			<div class="col-match-height">
				<div class="figure-insight">
					<div class="figure-image opacity"><a>
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
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</h3>
					</div>
					<div class="button-wrapper-center"><a class="btn btn-view-more">
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

	</xsl:template>

	<xsl:template match="News" mode='News-3'>
		<xsl:if test="FileUrl != ''">
			<div class="swiper-slide">
				<div class="wrapper">
					<div class="figure-media video">
						<div class="figure-image">
							<div class="wrapper">
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<div class="col w-full sm:w-1/2 md:w-4/12">
			<div class="col-match-height">
				<div class="figure-insight">
					<div class="figure-image opacity">

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
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</h3>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
					<div class="button-wrapper-left"><a class="btn btn-view-more">

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
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<div class="col w-full sm:w-1/2 md:w-4/12">
			<div class="col-match-height">
				<div class="figure-insight">
					<div class="figure-image zoom-in">
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
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</h3>
					</div>
					<div class="button-wrapper-left"><a class="btn btn-view-more">

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
	</xsl:template>
	<xsl:template match="News" mode='News-6'>
		<div class="col w-full md:w-1/2">
			<div class="head-title text-left">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="zone-description">
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
			<div class="button-wrapper-left"><a class="btn btn-view-more">

					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<span>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of>
					</span>
				</a></div>
		</div>
		<div class="col w-full md:w-1/2">
			<div class="image-wrapper">

				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-7'>
		<xsl:if test="FileUrl != ''">
			<div class="swiper-slide">
				<div class="wrapper">
					<div class="figure-media video">
						<div class="figure-image">
							<div class="wrapper">
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
