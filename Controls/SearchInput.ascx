<%@ Control Language="c#" AutoEventWireup="True" CodeBehind="SearchInput.ascx.cs" Inherits="CanhCam.Web.UI.SearchInput" %>

<portal:BasePanel ID="pnlSearch" runat="server" DefaultButton="btnSearch" CssClass="searchbox">
    <gb:WatermarkTextBox ID="txtSearch" runat="server" aria-label="<%$Resources:Resource, SearchInputWatermark %>" />
    <asp:Literal ID="litSeparator" runat="server" EnableViewState="false" />
    <button id="btnSearch" name="ctl00$mdl297$ctl00$Search$btnSearch" runat="server" class="searchbutton" onserverclick="btnSearch_Click" causesvalidation="false" title="<%$Resources:Resource, SearchButtonText %>" aria-label="<%$Resources:Resource, SearchButtonText %>">
        <asp:Literal ID="litSearch" EnableViewState="false" runat="server" />
    </button>
</portal:BasePanel>