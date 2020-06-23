<%@ Page Language="c#" CodeBehind="Compare.aspx.cs" MasterPageFile="~/App_MasterPages/layout.Master"
    AutoEventWireup="false" Inherits="CanhCam.Web.ProductUI.CompareProductsPage" %>

<asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
    <%--<div class="compare-products">--%>
    <section class="product-comparison">
        <div class="container">
            <%--<div class="page-title">--%>
            <h1 class="head-title text-center" id="headCompareTitle" runat="server">
                <asp:Literal ID="litProductCompareTitle" Text="So sánh" runat="server" />
                 <%--Text="<%$Resources:ProductResources, ProductCompareTitle %>"--%>
            </h1>
            <%--</div>--%>
            <%--<div class="body-wrap">--%>
            <div class="wrapper-table">
                <asp:LinkButton ID="btnClearCompareProductsList" CssClass="clear-list" OnClick="btnClearCompareProductsList_Click"
                    runat="server" Text="<%$Resources:ProductResources, ProductCompareClearList %>" />

                <%--<table cellpadding="0" cellspacing="0" border="0" id="tblCompareProducts" runat="server" class="compare-products-table"></table>--%>
                <div class="product-comparison-table" runat="server" id="divComparisionTable"></div>

                <div class="back-link">
                    <asp:LinkButton ID="btnBack" CssClass="clear-list" OnClick="btnBack_Click" Visible="false"
                        runat="server" Text="<%$Resources:ProductResources, ProductCompareBackButton %>" />
                    <asp:HiddenField ID="hdnReturnUrl" runat="server" />
                </div>
            </div>
        </div>

        <%--</div>--%>
    </section>
    <%--</div>--%>
</asp:Content>
