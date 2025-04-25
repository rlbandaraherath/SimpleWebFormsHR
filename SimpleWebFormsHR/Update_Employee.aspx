<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Employee.aspx.cs" Inherits="SimpleWebFormsHR.Update_Employee" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />



    <div class="maincontnt">


        <div class="Header" style="text-align: center;">
            <h1>Update Employee Details</h1>
        </div>
        <hr />
        <br />

        <div class="row form">
            <div class=" Left col-lg-6">
                <!--left side -->


                <div class="row  Name">
                    <div class="col-lg-4">
                        <label>Name</label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtName" runat="server">  </asp:TextBox>
                        <!-- <asp:CustomValidator ID="valtxtname" runat="server" ControlToValidate ="txtName" Text="Required" ValidateEmptyText ="True" Forecolor="Red"> </asp:CustomValidator>  -->
                        <asp:RequiredFieldValidator ID="valuetxtname" runat="server" ControlToValidate="txtName" Text="required" ForeColor="Red" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="valuetxtaddress" runat="server" Text="Required" ForeColor="Red" ControlToValidate="txtAddress" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <br />
                <div class="row  Birthday">
                    <div class="col-lg-4">
                        <label>Birthday</label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtBirthDay" TextMode="date" runat="server">  </asp:TextBox>
                        <asp:RequiredFieldValidator ID="valuetxtbirthday" runat="server" ControlToValidate="txtBirthDay" ForeColor="Red" Text="Required" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="valueddlgender" runat="server" ForeColor="Red" ControlToValidate="ddlGender" Text="Please Select" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
                    </div>

                </div>

            </div>





            <div class="right  col-lg-6">
                <!--right side -->

                <div class="row  NIC">
                    <div class="col-lg-4">
                        <label>NIC</label>
                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtNIC" runat="server" MaxLength="14">  </asp:TextBox>
                        <asp:RequiredFieldValidator ID="valuetxtNIC" runat="server" ForeColor="Red" Text="Required" ControlToValidate="txtNIC" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator runat="server" ID="validatetxtmobile" Text="Required" ForeColor="Red" ControlToValidate="txtMobile" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="validatetxtage" runat="server" ForeColor="Red" ControlToValidate="txtAge" Text="Required" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="validatemarriage" runat="server" ForeColor="Red" ControlToValidate="ddlMartialStatus" Text="Required" ValidationGroup="btnupdate"></asp:RequiredFieldValidator>
                    </div>


                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="row btnalign">
                    <div class="updateButton col-lg-2">

                        <asp:Button ID="btnUpdate" runat="server" OnClick="Cllick_btnUpdate" Text="Update" ValidationGroup="btnupdate" />
                    </div>

               
                </div>
            </div>
        </div>
        <div class="row space">
            <br />
            <br />
            <hr />
            <br />
            <br />

        </div>
        <div class="gridview">
            <asp:GridView ID="grdemployee" runat="server" AutoGenerateColumns="False" Width="95%" OnSelectedIndexChanged="grdemployee_SelectedIndexChanged" OnRowDeleting="grdemployeeRowDelete"  DataKeyNames="NIC">
                <Columns>


                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="NIC" HeaderText="NIC" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel No" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Matial_Status" HeaderText="Martial Status" />
                    <asp:CommandField ShowDeleteButton="True" />

                </Columns>
            </asp:GridView>
        </div>
    </div>



</asp:Content>
