<%@ page language="C#" autoeventwireup="true" inherits="teacherMng, App_Web_0k8jqdw2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None"
            BorderWidth="1px" CellPadding="3" DataKeyNames="TelId" DataSourceID="SqlDataSource1"
            GridLines="Vertical">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="TelId" HeaderText="TelId" InsertVisible="False" ReadOnly="True"
                    SortExpression="TelId">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Telteacher" HeaderText="Telteacher" SortExpression="Telteacher" >
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="TelNum" HeaderText="TelNum" SortExpression="TelNum" >
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="PSW" HeaderText="PSW" SortExpression="PSW" >
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                    <ItemStyle Width="150px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="Gainsboro" />
        </asp:GridView>
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TelTable] WHERE [TelId] = @original_TelId AND (([Telteacher] = @original_Telteacher) OR ([Telteacher] IS NULL AND @original_Telteacher IS NULL)) AND (([TelNum] = @original_TelNum) OR ([TelNum] IS NULL AND @original_TelNum IS NULL)) AND (([PSW] = @original_PSW) OR ([PSW] IS NULL AND @original_PSW IS NULL))"
            InsertCommand="INSERT INTO [TelTable] ([Telteacher], [TelNum], [PSW]) VALUES (@Telteacher, @TelNum, @PSW)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TelTable] ORDER BY [TelId] DESC"
            UpdateCommand="UPDATE [TelTable] SET [Telteacher] = @Telteacher, [TelNum] = @TelNum, [PSW] = @PSW WHERE [TelId] = @original_TelId AND (([Telteacher] = @original_Telteacher) OR ([Telteacher] IS NULL AND @original_Telteacher IS NULL)) AND (([TelNum] = @original_TelNum) OR ([TelNum] IS NULL AND @original_TelNum IS NULL)) AND (([PSW] = @original_PSW) OR ([PSW] IS NULL AND @original_PSW IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TelId" Type="Int32" />
                <asp:Parameter Name="original_Telteacher" Type="String" />
                <asp:Parameter Name="original_TelNum" Type="String" />
                <asp:Parameter Name="original_PSW" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Telteacher" Type="String" />
                <asp:Parameter Name="TelNum" Type="String" />
                <asp:Parameter Name="PSW" Type="String" />
                <asp:Parameter Name="original_TelId" Type="Int32" />
                <asp:Parameter Name="original_Telteacher" Type="String" />
                <asp:Parameter Name="original_TelNum" Type="String" />
                <asp:Parameter Name="original_PSW" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Telteacher" Type="String" />
                <asp:Parameter Name="TelNum" Type="String" />
                <asp:Parameter Name="PSW" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server" Height="173px" Width="709px">
            &nbsp;教师姓名：<asp:TextBox ID="TelTeacher" runat="server"></asp:TextBox><br />
            &nbsp;办公电话：<asp:TextBox ID="TelNum" runat="server"></asp:TextBox><br />
            &nbsp;设置密码：<asp:TextBox ID="Psw" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></asp:Panel>
    
    </div>
    </form>
</body>
</html>
