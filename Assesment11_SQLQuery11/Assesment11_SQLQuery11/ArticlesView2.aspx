<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="ArticlesView2.aspx.cs" Inherits="Assesment11_SQLQuery11.ArticlesView2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h2 class="text-center text-dark">Articles View 2</h2>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ArticleDbConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArticleId], [Title], [Content], [PublishDate]) VALUES (@ArticleId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ArticleDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ArticleId" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Content" Type="String" />
                <asp:Parameter Name="original_PublishDate" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ArticleId" Type="Int32" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="PublishDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="PublishDate" Type="DateTime" />
                <asp:Parameter Name="original_ArticleId" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Content" Type="String" />
                <asp:Parameter Name="original_PublishDate" Type="DateTime" />
            </UpdateParameters>
            </asp:SqlDataSource>
&nbsp;<table class="auto-style1">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ArticleId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="179px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                                <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>

</asp:Content>
