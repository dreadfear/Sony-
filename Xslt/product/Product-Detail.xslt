<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="product-detail">
			<div class="container">
				<div class="row row-padding">
					<div class="col w-full lg:w-1/2">
						<div class="product-information-wrapper">
							<div class="product-information">
								<h1>
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title">
									</xsl:value-of>
								</h1>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
								<div class="caption">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SubTitle">
									</xsl:value-of>
								</div>
							</div>
							<div class="button-wrapper"><a class="btn btn-primary"><span>
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ContactText">
										</xsl:value-of>
									</span></a><a class="btn btn-primary yellow"><span>
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ShopText">
										</xsl:value-of>
									</span></a><a class="btn btn-primary yellow"><span>
										<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/RetailText">
										</xsl:value-of>
									</span></a></div>
						</div>
					</div>
					<div class="col w-full lg:w-1/2">
						<div class="product-image">
							<div class="wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode='Top'>
								</xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-nav">
			<div class="container">
				<ul>
					<li><a href="#product-section-1">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/OViewText">
							</xsl:value-of>
						</a></li>
					<li><a href="#product-section-2">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FeatureText">
							</xsl:value-of>
						</a></li>
					<li><a href="#product-section-3">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SpecText"></xsl:value-of>
						</a></li>
					<li><a href="#product-section-4">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/DocumentText">
							</xsl:value-of>
						</a></li>
					<li><a href="#product-section-5">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/AccessoryText">
							</xsl:value-of>
						</a></li>
				</ul>
			</div>
		</section>

		<section class="product-sticky-scroll">
			<div class="container">
				<div class="product-header">
					<div class="title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
						</h2>
						<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="button-wrapper"><a class="btn btn-primary" href="#"><span>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/DownloadPDFText">
								</xsl:value-of>
							</span></a><a class="btn btn-primary yellow" href="#"><span>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ShopText">
								</xsl:value-of>
							</span></a><a class="btn btn-primary yellow" href="#"><span>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/RetailText">
								</xsl:value-of>
							</span></a></div>
				</div>
				<div class="product-detail-nav">
					<div class="container">
						<ul>
							<li><a href="#product-section-1">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/OViewText">
									</xsl:value-of>
								</a></li>
							<li><a href="#product-section-2">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FeatureText">
									</xsl:value-of>
								</a></li>
							<li><a href="#product-section-3">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SpecText">
									</xsl:value-of>
								</a></li>
							<li><a href="#product-section-4">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/DocumentText">
									</xsl:value-of>
								</a></li>
							<li><a href="#product-section-5">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/AccessoryText">
									</xsl:value-of>
								</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-image">
			<div class="container">
				<h2 class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/GalText"></xsl:value-of>
				</h2>
				<div class="swiper-product-detail">
					<div class="nav-arrow-prev"><span class="lnr lnr-chevron-left"></span></div>
					<div class="nav-arrow-next"><span class="lnr lnr-chevron-right"></span></div>
					<div class="swiper-pagination"></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">

							<xsl:apply-templates select="/ProductDetail/ProductImages" mode='Main'>
							</xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-summary" id="product-section-1">
			<div class="container">
				<div class="row">
					<div class="col w-full  lg:w-2/12">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/OViewText">
							</xsl:value-of>
						</div>
					</div>
					<div class="col w-full  lg:w-10/12">
						<div class="caption-text">


							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent">
							</xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-option" id="product-section-2">
			<div class="container">
				<div class="row">
					<div class="col w-full  lg:w-2/12">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FeatureText">
							</xsl:value-of>
						</div>
					</div>
					<div class="col w-full  lg:w-10/12">
						<div class="row-wrapper-cards">
							<div class="column">
								<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode='Attribute-1'>
								</xsl:apply-templates>
							</div>
							<div class="column">

								<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode='Attribute-2'>
								</xsl:apply-templates>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-specification" id="product-section-3">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-3/12">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SpecText"></xsl:value-of>
						</div>
						<div class="button-wrapper-right"><a class="btn btn-open-all" href="javascript:;"><span>
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/OAllText">
									</xsl:value-of>
								</span><em class="lnr lnr-chevron-down"></em></a><a class="btn btn-close-all"
								href="javascript:;"><span>
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/CAllText">
									</xsl:value-of>
								</span><em class="lnr lnr-chevron-up"></em></a>
						</div>
					</div>
					<div class="col w-full lg:w-9/12">
						<div class="toggle-wrapper">

							<xsl:apply-templates select="/ProductDetail/ProductAttributes2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="product-detail-document" id="product-section-4">
			<div class="container">
				<div class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/DownloadDocumentText">
					</xsl:value-of>
				</div>
				<xsl:apply-templates select="/ProductDetail/NewsRelated"></xsl:apply-templates>

			</div>
		</section>

		<section class="product-detail-faq" id="product-section-5">
			<div class="container">
				<div class="row">
					<div class="col w-full md:w-3/12">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FaqText"></xsl:value-of>
						</div>
					</div>
					<div class="col w-full md:w-9/12">
						<div class="toggle-wrapper">
							<xsl:apply-templates select="/ProductDetail/NewsRelated2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-accessory" id="product-section-6">
			<div class="container">
				<div class="row">
					<div class="col w-full md:w-3/12">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/AccessoryText">
							</xsl:value-of>
						</div>
					</div>
					<div class="col w-full md:w-9/12">
						<div class="swiper-product-accessory">
							<div class="swiper-pagination"></div>
							<div class="swiper-container">
								<div class="swiper-wrapper">

									<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="product-detail-news">
			<div class="container">
				<div class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/RNewsText"></xsl:value-of>
				</div>
				<div class="swiper-news-related">
					<div class="swiper-pagination"></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">

							<xsl:apply-templates select="/ProductDetail/NewsRelated3"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="NewsRelated">
		<div class="row">
			<div class="col w-full md:w-2/12">
				<div class="document-image">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
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
			<div class="col w-full md:w-10/12">
				<div class="figure-document">
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
	</xsl:template>

	<xsl:template match="NewsRelated2">
		<div class="toggle-item">
			<div class="title"><span>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</span><em class="lnr lnr-chevron-down"></em>
			</div>
			<article>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</article>
		</div>

	</xsl:template>
	<xsl:template match="NewsRelated3">
		<div class="swiper-slide">
			<div class="product-news-related">
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
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>

				</div>
				<div class="figcaption">
					<h2><a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a></h2>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductRelated">
		<div class="swiper-slide">
			<div class="figure-accessory">
				<div class="figure-image zoom-in">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
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
					<a class="title">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode='Top'>
		<xsl:if test="position() =1">


			<img class='lazyload'>
			<xsl:attribute name="data-src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</xsl:if>

	</xsl:template>


	<xsl:template match="ProductAttributes" mode='Attribute-1'>

		<xsl:if test="number(position()) mod 2 = 0">

			<div class="cards">
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode='Attribute-2'>
		<xsl:if test="number(position()) mod 2 != 0">

			<div class="cards">
				<div class="title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductImages" mode='Main'>


		<xsl:if test="position() > 1">

			<div class="swiper-slide">
				<div class="wrapper"><a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>


						<img class='lazyload'>
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a></div>
			</div>
		</xsl:if>

	</xsl:template>


	<xsl:template match="ProductAttributes2">
		<div class="toggle-item">
			<div class="title"><span>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</span><em class="lnr lnr-chevron-down"></em></div>
			<article>
				<div class="row">
					<div class="col w-full md:w-4/12">
						<div class="title-text">hệ thống hiểm thị</div>
					</div>
					<div class="col w-full md:w-8/12">
						<div class="caption">SXRD panlel</div>
					</div>
				</div>
			</article>
		</div>
	</xsl:template>
</xsl:stylesheet>