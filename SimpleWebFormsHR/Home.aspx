﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SimpleWebFormsHR.Home" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main">
        <div class="Header">
            <h1 class="text-primary  text-center  display-4  my-4">Employee Details</h1>
            </div>
        <br/><br/>

        <div class="gridview">
            <asp:GridView ID="grdviewmain" runat="server" Width="95%" AutoGenerateColumns="False" CssClass="table table-bordered  table-hover table-primary ">
                <columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="NIC" HeaderText="NIC" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel No" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Matial_Status" HeaderText="Martial Status" />
                </columns>
            </asp:GridView>


        </div>


    </div>


</asp:Content>
