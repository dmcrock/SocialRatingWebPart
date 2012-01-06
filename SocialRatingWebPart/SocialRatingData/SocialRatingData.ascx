<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SocialRatingData.ascx.cs" Inherits="SocialRatingWebPart.SocialRatingData.SocialRatingData" %>

<asp:UpdatePanel ID="RatingUpatePanel" runat="server">
<ContentTemplate>
    <asp:Label ID="lblSocialRatingTitle" runat="server" Font-Bold="true" ForeColor="#000066" Text="Wiki Rating Data"></asp:Label>
    <table>
        <tr>
            <td><asp:Label ID="lblRatingDataList" runat="server" ForeColor="#000066" Text="Rating Data"></asp:Label></td>
            <td><asp:ListBox ID="lstbxRatingData" runat="server" Width="172px"></asp:ListBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRating" ForeColor="#000066" runat="server" Text="Avg. Rating:"></asp:Label></td>
            <td><asp:Label ID="lblData" ForeColor="#000066" runat="server" Text="Data"></asp:Label></td>
        </tr>
    </table>
    <table>
        <tr>
            <td><asp:Button ID="btnRefresh" runat="server" Text="Refresh" ToolTip="Click to refresh." OnClick="btnRefresh_Click" />
            </td>
        </tr>
    </table>
 </ContentTemplate>
</asp:UpdatePanel>