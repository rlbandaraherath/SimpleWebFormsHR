<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleWebFormsHR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main row">
        <h1 style="text-align: center">Add New Employee</h1>
       
        <br/>
        <asp:Label ID="lblerror" runat="server" foreColor="Red" Visible="false" />
        
        <div class=" Left col-lg-6">


            <div class="row  Name">
                <div class="col-lg-4">
                    <asp:label runat="server" CssClass="form-label">Name</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control">  </asp:TextBox>
                    <!-- <asp:CustomValidator ID="valtxtname" runat="server" ControlToValidate ="txtName" Text="Required" ValidateEmptyText ="True" Forecolor="Red"> </asp:CustomValidator>  -->
                    <asp:RequiredFieldValidator ID="valuetxtname" runat="server" ControlToValidate="txtName" Text="required" ForeColor="Red" ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Address">
                <div class="col-lg-4">
                    <asp:label runat="server" CssClass="form-label">Address</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtaddress" runat="server" Text="Required" ForeColor="Red" ControlToValidate="txtAddress" ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Birthday">
                <div class="col-lg-4">
                    <asp:label runat="server" CssClass="form-label">Birthday</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtBirthDay" TextMode="date" Rows="3" runat="server" CssClass="form-control">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtbirthday" runat="server" ControlToValidate="txtBirthDay" ForeColor="Red" Text="Required" ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Gender">
                <div class="col-lg-4">
                    <asp:label runat="server" CssClass="form-label">Gender</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Select--" Value="" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="valueddlgender" runat="server" ForeColor="Red" ControlToValidate="ddlGender" Text="Please Select" ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>

            </div>

        </div>





        <div class="right  col-lg-6">

            <div class="row  NIC">
                <div class="col-lg-4">
                    <asp:label runat="server"  CssClass="form-label">NIC</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtNIC" runat="server" MaxLength="14" CssClass="form-control">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="valuetxtNIC" runat="server" ForeColor="Red" Text="Required" ControlToValidate="txtNIC" ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />

            <div class="row  Mobile">
                <div class="col-lg-4">
                    <asp:label runat="server"  CssClass="form-label">Mobile</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" CssClass="form-control">  </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="validatetxtmobile" Text="Required" ForeColor="Red" ControlToValidate="txtMobile"  ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />

            <div class="row  Age">
                <div class="col-lg-4">
                    <asp:label runat="server"  CssClass="form-label">Age</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtAge" runat="server" TextMode="Number" CssClass="form-control">  </asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatetxtage" runat="server" ForeColor="Red" ControlToValidate="txtAge" Text="Required"  ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <br />
            <div class="row  Martial Status">
                <div class="col-lg-4">
                    <asp:label runat="server"  CssClass="form-label">Martial Status</asp:label>
                </div>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlMartialStatus" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Select--" Value="" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="validatemarriage" runat="server" ForeColor="Red" ControlToValidate="ddlMartialStatus" Text="Required"  ValidationGroup="valsubmit"></asp:RequiredFieldValidator>
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

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnsubmit_onclick"  ValidationGroup="valsubmit"  CssClass="btn btn-primary"/>

            </div>
            <div class="col-lg-1">

                <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_onclick"  CssClass="btn btn-primary"  />
            </div>
        </div>

        <br/><hr/><br/>

        <div class="gridview">

              <div class="gridview">
            <asp:GridView ID="grdemployee" runat="server" AutoGenerateColumns="False" Width="95%"  CssClass="table table-bordered  table-hover table-primary " >
                <Columns>


                   
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="NIC" HeaderText="NIC" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel No" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Matial_Status" HeaderText="Martial Status" />
             

                </Columns>
            </asp:GridView>
        </div>


            </div>



    </div>
</asp:Content>
