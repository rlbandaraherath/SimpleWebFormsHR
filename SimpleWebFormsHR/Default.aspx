<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleWebFormsHR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main row">
        <h1 style="text-align: center">Add New Employee</h1>
       
        
        
        <div class=" Left col-lg-6">


            <div class="row  Name">
                <div class="col-lg-4">
                    <label>Name</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtName" runat="server">  </asp:TextBox>
                    <!-- <asp:CustomValidator ID="valtxtname" runat="server" ControlToValidate ="txtName" Text="Required" ValidateEmptyText ="True" Forecolor="Red"> </asp:CustomValidator>  -->
                    <asp:RequiredFieldValidator ID="valuetxtname" runat="server" ControlToValidate="txtName" Text="required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Address">
                <div class="col-lg-4">
                    <label>Address</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" Rows="3" runat="server">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtaddress" runat="server" Text="Required" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Birthday">
                <div class="col-lg-4">
                    <label>Birthday</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtBirthDay" TextMode="date" Rows="3" runat="server">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtbirthday" runat="server" ControlToValidate="txtBirthDay" ForeColor="Red" Text="Required"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Gender">
                <div class="col-lg-4">
                    <label>Gender</label>
                </div>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="--Select--" Value="" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="valueddlgender" runat="server" ForeColor="Red" ControlToValidate="ddlGender" Text="Please Select"></asp:RequiredFieldValidator>
                </div>

            </div>

        </div>





        <div class="right  col-lg-6">

            <div class="row  NIC">
                <div class="col-lg-4">
                    <label>NIC</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtNIC" runat="server" MaxLength="14">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtNIC" runat="server" ForeColor="Red" Text="Required" ControlToValidate="txtNIC"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />

            <div class="row  Mobile">
                <div class="col-lg-4">
                    <label>Mobile</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtMobile" runat="server" MaxLength="10">  </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="validatetxtmobile" Text="Required" ForeColor="Red" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />

            <div class="row  Age">
                <div class="col-lg-4">
                    <label>Age</label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtAge" runat="server" TextMode="Number">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatetxtage" runat="server" ForeColor="Red" ControlToValidate="txtAge" Text="Required"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Martial Status">
                <div class="col-lg-4">
                    <label>Martial Status</label>
                </div>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlMartialStatus" runat="server">
                        <asp:ListItem Text="--Select--" Value="" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="validatemarriage" runat="server" ForeColor="Red" ControlToValidate="ddlMartialStatus" Text="Required"></asp:RequiredFieldValidator>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

        </div>

        <div class="buttons row">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-1">

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnsubmit_onclick" />

            </div>
            <div class="col-lg-1">

                <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_onclick" />
            </div>
        </div>




    </div>
</asp:Content>
