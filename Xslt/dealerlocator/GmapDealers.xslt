<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="hidden">
			<input type="hidden" id="hdnDealerLocatorSiteId">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/SiteId"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdnDealerLocatorLanguageId">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/LanguageId"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdnDealerLocatorZoneGuid" value="">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/ZoneGuid"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdfDealerLocatorSelectCountry">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdfDealerLocatorSelectProvince">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdfDealerLocatorSelectDistrict">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdfDealerLocatorSelectZone">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/SelectZoneText"></xsl:value-of>
			</xsl:attribute>
			</input>
			<input type="hidden" id="hdfDealerLocatorCulture">
			<xsl:attribute name="value">
				<xsl:value-of select="/DealerList/Culture"></xsl:value-of>
			</xsl:attribute>
			</input>
		</div>
		<div id="super-store-finder">
			<div id="main_content">
				<div id="clinic-finder" class="relative">
					<div class="overlay hidden" id="overlay-contact-clinic-form">
					</div>
					<div class="result-wrapper">
						<div id="results" class="dealer-list">
							<div id="ajax_msg" class="locate mrb15 hidden">
							</div>
							<div class="list-wrapper" style="z-index: 2;">
								<div class="filter-map">
									<!-- <div class="filter-title">Filter</div> -->
									<div class="field form_desc form-group hidden">
										<label for="ddlCountry">
											<xsl:value-of select="/DealerList/CountryText"></xsl:value-of>
										</label>
										<select class="form-select uk-select" id="ddlCountry"></select>
									</div>
									<div class="field form_desc form-group">
										<!-- <label for="ddlProvince" class="uk-display-block"
													style="margin-bottom: 5px;">
													<xsl:value-of select="/DealerList/ProvinceText"></xsl:value-of>
												</label> -->
										<select class="form-select form-group" id="ddlProvince">
											<option value="">
												<xsl:value-of select="/DealerList/SelectProvinceText">
												</xsl:value-of>
											</option>
										</select>
									</div>
									<div class="field form_desc form-group">
										<!-- <label for="ddlDistrict" class="uk-display-block"
													style="margin-bottom: 5px;">
													<xsl:value-of select="/DealerList/DistrictText"></xsl:value-of>
												</label> -->
										<select class="form-group " id="ddlDistrict">
											<option value="">
												<xsl:value-of select="/DealerList/SelectDistrictText">
												</xsl:value-of>
											</option>
										</select>
									</div>
									<div class="form-group">
										<input type="submit" id="edit-submit" class="btn-searchmap">
										<xsl:attribute name="value">
											<xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
										</xsl:attribute>
										</input>
									</div>
								</div>
								<div class="hidden">
									<div class="searh-text">
										<label>
											<xsl:value-of select="/DealerList/OrText"></xsl:value-of>
										</label>
										<input type="text" maxlength="128" name="address" id="address" size="60"
											value="" class="form-text" autocomplete="off">
										<xsl:attribute name="placeholder">
											<xsl:value-of select="/DealerList/EnterLocationText"></xsl:value-of>
										</xsl:attribute>
										</input>
										<input type="submit" id="edit-submit1"
											class="btn btn-large btn-primary btn-searchmap">
										<xsl:attribute name="value">
											<xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
										</xsl:attribute>
										</input>
									</div>
								</div>
								<div class="list-dealer">
									<ul class="noli list_system mrb15" style="display: block; margin-top: 0;" id="list">
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div id="map">
						<iframe src="" frameborder="1" id='map-iframe' style="height: 100%; width: 100%;"></iframe>
						<input type="hidden" id="distance" name="distance" value="1" />
						<div id="map_canvas" class="map_system hidden">
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>