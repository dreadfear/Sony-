<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="lastest-news-swiper">
			<div class="container">
				<xsl:if test="count(/NewsList/News)>0">
					<div class="lastest-news-next"><em class="lnr lnr-chevron-right"></em></div>
					<div class="lastest-news-prev"><em class="lnr lnr-chevron-left"></em></div>
				</xsl:if>
				<div class="swiper-pagination"></div>
				<div class="swiper-container">
					<div class="swiper-wrapper">

						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="figure-lastest-news">
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
						<h3><a href="#">PXW-FX9 Đạt chuẩn "cận máy quay điện ảnh"</a></h3>
						<div class="caption">
							<p>Ttrong nhựng năm trở lại đây máy quay kỹ thuật số với cảm biến lớn phát
								triển nhanh chóng </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>