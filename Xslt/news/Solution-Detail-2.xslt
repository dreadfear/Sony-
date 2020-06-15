<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:if test="Url !='#'">
				<section class="link-banner solution-detail-banner">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-5">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:if test="Url !='#'">
				<section class="section-card-product four-item-section">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:if test="Url !='#'">
				<section class="section-card-product three-item-section reserve-section">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-7'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:if test="Url !='#'">
				<section class="section-card-product four-item-section">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-8'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=9">
			<xsl:if test="Url !='#'">
				<section class="link-banner solution-detail-banner">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-9'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=10">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-6">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-10'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=11">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-11'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=12">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-7">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-12'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=13">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-8" >
					<xsl:attribute name="setBackground">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-13'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=14">
			<xsl:if test="Url !='#'">
				<xsl:apply-templates select="News" mode='News-14'></xsl:apply-templates>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=15">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-11">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="swiper-client-federations">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode='News-15'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=16">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-12">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="swiper-client-brands">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode='News-16'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=17">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-13">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="swiper-client-media">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode='News-17'></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
		<xsl:if test="position()=18">
			<xsl:if test="Url !='#'">
				<section class="solution-detail-14">
					<div class="container">
						<div class="head-title text-center">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode='News-18'></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<section class="banner-text-over" >
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container-fluid">
				<div class="image-wrapper">
					<img >
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
					<div class="zone-description">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<section class="solution-detail-3">
			<div class="container">
				<div class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description text-center">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<div class="image-wrapper">
					<img class='lazyload' >
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<section class="solution-detail-4">
			<div class="container">
				<div class="row">
					<div class="col w-full lg:w-1/2">
						<div class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="zone-description">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<div class="button-wrapper-left">
							<a class="btn btn-view-more blue">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of>
								</span>
							</a>
						</div>
					</div>
					<div class="col w-full lg:w-1/2">
						<div class="image-wrapper opacity">
							<img >
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
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-4'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="button-wrapper-center">
			<a class="btn btn-primary yellow" >
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
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
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description text-center">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<xsl:if test="FileUrl !='#'">
			<div class="figure-media video">
				<div class="figure-image">
					<div class="wrapper">
						<xsl:if test="Url != ''">
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-6'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="image-wrapper">
					<img >
						<xsl:attribute name="src">
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
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<xsl:if test="SubTitle !=''">
					<div class="button-wrapper-left">
						<a class="btn btn-view-more" >
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
		</div>
		<div class="product-section-include">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			<!-- <div class="row"><xsl:apply-templates select="News" mode='News-6'></xsl:apply-templates></div> -->
		</div>
		<!-- <xsl:if test="position() &lt; 5"><div class="col w-full sm:w-1/2 lg:w-3/12"><div class="col-match-height"><div class="figure-product-seciton"><div class="figure-image"><a><xsl:attribute name="href"><xsl:value-of select="Url"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><img class="lazyload"><xsl:attribute name="data-src"><xsl:value-of select="ImageUrl"></xsl:value-of></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute></img></a></div><div class="figcaption"><h3><a><xsl:attribute name="href"><xsl:value-of select="SubTitle"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></a></h3><div class="caption"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></div></div><div class="button-wrapper-center"><a class="btn btn-view-more" ><xsl:attribute name="href"><xsl:value-of select="SubTitle"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><span><xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of></span></a></div></div></div></div></xsl:if> -->
	</xsl:template>
	<xsl:template match="News" mode='News-7'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="image-wrapper">
					<img >
						<xsl:attribute name="src">
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
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<xsl:if test="SubTitle !=''">
					<div class="button-wrapper-left">
						<a class="btn btn-view-more" >
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
		</div>
		<div class="product-section-include">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			<!-- <div class="row"><xsl:apply-templates select="News" mode='News-7'></xsl:apply-templates></div> -->
		</div>
		<!-- <div class="col w-full sm:w-1/2 lg:w-4/12"><div class="col-match-height"><div class="figure-product-seciton"><div class="figure-image"><a><xsl:attribute name="SubTitle"><xsl:value-of select="Url"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><img class="lazyload"><xsl:attribute name="data-src"><xsl:value-of select="ImageUrl"></xsl:value-of></xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute></img></a></div><div class="figcaption"><h3><a><xsl:attribute name="href"><xsl:value-of select="SubTitle"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></a></h3><div class="caption"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></div></div><div class="button-wrapper-center"><a class="btn btn-view-more" ><a><xsl:attribute name="href"><xsl:value-of select="SubTitle"></xsl:value-of></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="Title"></xsl:value-of></xsl:attribute></a><span><xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of></span></a></div></div></div></div> -->
	</xsl:template>
	<xsl:template match="News" mode='News-8'>
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="image-wrapper">
					<img >
						<xsl:attribute name="src">
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
				<div class="zone-description">NUCLeUS là nền tảng phát triển  video-over-IP của chúng tôi, giúp thay đổi quy trình phẫu thuật tại các bệnh viện kết nối hiện nay. Linh hoạt và có thể mở rộng, NUCLeUS trao quyền cho các bác sĩ phẫu thuật và nhân viên lâm sàng lên kế hoạch, định tuyến, ghi lại và chia sẻ dữ liệu y tế - trong và ngoài OR.</div>
				<xsl:if test="SubTitle !=''">
					<div class="button-wrapper-left">
						<a class="btn btn-view-more" >
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
		</div>
		<div class="product-section-include">
			<div class="row">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-9'>
		<h2 class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="button-wrapper-center">
			<a class="btn btn-primary yellow" >
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/FindMoreText"></xsl:value-of>
				</span>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-10'>
		<div class="head-title text-left">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<xsl:if test="SubTitle !=''">
			<a class="btn btn-view-more" >
				<xsl:attribute name="href">
					<xsl:value-of select="SubTitle"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/VMAText"></xsl:value-of>
				</span>
			</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-11'>
		<section class="banner-text-over text-bottom">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container-fluid">
				<div class="image-wrapper">
					<img >
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
					<div class="zone-description">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-12'>
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
	<xsl:template match="News" mode='News-13'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="figure-expertise">
				<div class="figure-image">
					<img class='lazyload' >
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="figcaption">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-14'>
		<section class="solution-detail-9" >
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="zone-description text-center">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<div class="image-wrapper">
					<img >
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="row">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<!-- <xsl:apply-templates select="NewsAttributes"></xsl:apply-templates> -->
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="title-text">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<div class="caption">
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-15'>
		<xsl:apply-templates select="NewsImages" mode='Ferderation'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode='News-16'>
		<xsl:apply-templates select="NewsImages" mode='Ferderation'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode='News-17'>
		<xsl:apply-templates select="NewsImages" mode='Ferderation'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode='News-18'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="figure-partner">
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
					<h3 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode='Ferderation'>
		<div class="swiper-slide">
			<div class="wrapper">
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
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>