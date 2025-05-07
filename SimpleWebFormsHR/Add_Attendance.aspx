<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_Attendance.aspx.cs" Inherits="SimpleWebFormsHR.Add_Attendance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="header">
            <br />
            <h1 style="text-align: center">Employee Attendance</h1>
            <br />
            <br />
            <br />
            <asp:Label ID="lblerror" runat="server" Visible="false" />

        </div>
        <div class="row form1">

            <div class="col-lg-5">
                <asp:Label ID="lblyear" runat="server" Text="Year : " CssClass="form-label" />
                <asp:TextBox ID="txtyear" runat="server"  CssClass="form-control" />
            </div>


            <!--    <div class="col-lg-3">
                <asp:Label ID="lblmonth" runat="server" Text="Month" />
                <asp:TextBox ID="txtmonth" runat="server" />
            </div>   -->

            <div class="col-lg-3">
                <asp:Button ID="btnload" runat="server" Text="Load Data" OnClick="btnloadClicked" CssClass="btn btn-primary"   />
            </div>
            <br />
            <br />
            <div class="gridview">
                <asp:GridView ID="grdattendance" runat="server" AutoGenerateColumns="false" width="95%"  CssClass="table table-bordered  table-hover table-primary ">

                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="NIC" HeaderText="NIC" />
                        <asp:BoundField DataField="Year" HeaderText="Year" />
                        <asp:BoundField DataField="January" HeaderText="January" />
                        <asp:BoundField DataField="February" HeaderText="February" />
                        <asp:BoundField DataField="March" HeaderText="March" />
                        <asp:BoundField DataField="April" HeaderText="April" />
                        <asp:BoundField DataField="May" HeaderText="May" />
                        <asp:BoundField DataField="June" HeaderText="June" />
                        <asp:BoundField DataField="July" HeaderText="July" />
                        <asp:BoundField DataField="August" HeaderText="August" />
                        <asp:BoundField DataField="September" HeaderText="September" />
                        <asp:BoundField DataField="Octomber" HeaderText="Octomber" />
                        <asp:BoundField DataField="November" HeaderText="November" />
                        <asp:BoundField DataField="December" HeaderText="December" />



                    </Columns>


                </asp:GridView>
            </div>
        </div>




    </div>
</asp:Content>
