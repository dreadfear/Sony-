<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="section-scroll-wrapper">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>

	</xsl:template>
	<xsl:template match="Zone">

		<xsl:if test="position()=1">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-1" id='section-id-1'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">

				<section class="technology-detail-2 section-caption" id='section-id-2'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-2'>
						</xsl:apply-templates>
					</div>
				</section>

			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<section class="section-card-product three-item-section technology-detail-3 section-caption"
					id='section-id-3'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-4" id='section-id-4'>
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">

							<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-2 bg-dark" id='section-id-5'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-6" id='section-id-7'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-7'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-8'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=9">
			<xsl:if test="Url !='#'">
				<div class="wrapper-news">
					<xsl:apply-templates select="News" mode='News-9'></xsl:apply-templates>
				</div>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=10">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-1 normal-section" id='section-id-10'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-10'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=11">
			<xsl:if test="Url !='#'">
				<section class="section-card-product three-item-section technology-detail-three" id='section-id-11'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-11'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=12">
			<xsl:if test="Url !='#'">
				<section class="section-card-product four-item-section technology-detail-four" id='section-id-12'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-12'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=13">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-qoutes" id='section-id-13'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-13'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=14">
			<xsl:if test="Url !='#'">
				<section class="link-banner technology-detail-banner" id='section-id-14'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-14'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=15">
			<xsl:if test="Url !='#'">
				<section class="technology-features " id='section-id-15'>
					<div class="container">

						<xsl:apply-templates select="News" mode='News-15'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=16">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-16'></xsl:apply-templates>

			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=17">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-12" id='section-id-17'>
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<xsl:apply-templates select="News" mode='News-17'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=18">
			<xsl:if test="Url !='#'">

				<xsl:apply-templates select="News" mode='News-18'></xsl:apply-templates>

			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=19">
			<xsl:if test="Url !='#'">
				<section class="link-banner solution-detail-banner" id='section-id-19'>
					<div class="container">
						<xsl:apply-templates select="News" mode='News-19'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=20">
			<xsl:if test="Url !='#'">
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=21">
			<xsl:if test="Url !='#'">
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=22">
			<xsl:if test="Url !='#'">
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
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="row">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
		<div class="row">
			<div class="explain-text">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="head-title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="product-section-include">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>

				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="figure-technology-detail">
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
					<h3 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description text-center">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="row">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-6'>
		<section class="technology-detail-5 section-caption" id='section-id-6'>
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description text-white text-center">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-7'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
		<div class="button-wrapper-center">
			<a class="btn btn-view-more">

				<xsl:attribute name="href">
					<xsl:value-of select="SubTitle"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/DownloadFilePDFText"></xsl:value-of>
				</span>
			</a></div>
	</xsl:template>
	<xsl:template match="News" mode='News-8'>
		<section class="banner-text-over" id='section-id-8'>
			<xsl:attribute name="setBackground">
				<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container-fluid">
				<div class="image-wrapper"><img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="container">
					<div class="head-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="zone-description text-center">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-9'>

		<xsl:if test="position()=1">

			<section class="technology-detail-2 normal-section" id='section-id-9'>
				<div class="container">
					<div class="head-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="sub-title">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</div>
					<div class="zone-description text-center">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() !=1">

			<section class="technology-detail-2 normal-section">
				<div class="container">
					<div class="head-title text-center">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
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
			</section>

		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-10'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="image-wrapper">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-11'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
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
						</a></div>
				</xsl:if>

			</div>
			<div class="col w-full lg:w-1/2">
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
		</div>
		<div class="product-section-include">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>

				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-12'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
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
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="head-title -mt-2">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<xsl:if test="SubTitle !=''">
					<div class="button-wrapper-left">
						<a class="btn btn-view-more">
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
		<div class="product-section-include">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-13'>
		<div class="qoutes-text">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>.
			</h2>
		</div>
		<div class="caption">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-14'>
		<h2 class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="button-wrapper-center">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>


		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-15'>
		<xsl:if test="position()=1">

			<div class="technology-detail-8 technology-news-section">
				<div class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="sub-title">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
				<div class="row">


					<xsl:apply-templates select="NewsImages" mode='FirstImage'></xsl:apply-templates>
				</div>
				<div class="row mt-6 lg:mt-10">
					<xsl:apply-templates select="NewsImages" mode='SecondImage'></xsl:apply-templates>

				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="technology-detail-9 technology-news-section">
				<div class="sub-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
				<div class="row">
					<xsl:apply-templates select="NewsImages" mode='FirstImage'></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="technology-detail-10 technology-news-section">
				<div class="sub-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
				<div class="row">
					<xsl:apply-templates select="NewsImages" mode='FirstImage'></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=4">
			<div class="technology-detail-11 technology-news-section">
				<div class="sub-title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
				<div class="row">
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
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-16'>
		<section class="product-section-zone" id='section-id-16'>
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="class">
				<xsl:choose>
					<xsl:when test="(position() mod 2) != 1">
						<xsl:text>product-section-zone reserve-zone</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>product-section-zone </xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col w-full md:w-1/2">
						<div class="figure-caption">
							<div class="head-title white">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
					<div class="col w-full md:w-1/2">
						<xsl:if test="FileUrl !=''">
							<div class="figure-media video">
								<div class="figure-image">
									<div class="wrapper">
										<xsl:if test="FileUrl != ''">
											<div class="play">
												<div class="play__icon"></div>
												<video playsinline="" loop="">
													<source type="video/mp4">
													<xsl:attribute name="src">
														<xsl:value-of select="FileUrl" disable-output-escaping="yes">
														</xsl:value-of>
													</xsl:attribute>
													</source>
												</video>
											</div>
										</xsl:if>
									</div>
								</div>
							</div>
						</xsl:if>
						<xsl:apply-templates select="NewsImages" mode='ThirdImage'></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="News" mode='News-17'>
		<div class="row">
			<xsl:attribute name="class">
				<xsl:choose>
					<xsl:when test="(position() mod 2) != 1">
						<xsl:text>row flex-row-reverse</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>row </xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<div class="col w-full lg:w-1/2">
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
			<div class="col w-full lg:w-1/2">
				<xsl:if test="ImageUrl !=''">
					<div class="image-wrapper"> <img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</xsl:if>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode='News-18'>
		<section class="banner-text-normal" id='section-id-18'>
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>

					<xsl:if test="SubTitle !=''">

						<div class="button-wrapper-center">
							<a class="btn btn-view-more">
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
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-19'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode='FirstImage'>
		<xsl:if test="position() &lt; 3">
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
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages" mode='SecondImage'>
		<xsl:if test="position() > 2">
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
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages" mode='ThirdImage'>
		<xsl:if test="position() > 1">
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
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>
