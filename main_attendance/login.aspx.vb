Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Visible = False

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        If txtuserid.Text = "" Or txtpass.Text = "" Or txtannualyear.Text = "" Then
            lblmsg.Visible = True
            lblmsg.Text = "Please fill all the fields"
        Else

            constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)
            conn.Open()

            cmdstr = "select unique_id,password,staff_name,staff_dept from staff_reg where unique_id='" & txtuserid.Text & "' and password='" & txtpass.Text & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            If Not (reader.Read) Then
                lblmsg.Visible = True
                lblmsg.Text = "Incorrect Userid or Password!!!"
            Else

                Session("staff_dept") = reader("staff_dept")
                Session("unique_id") = reader("unique_id")
                Session("staff_name") = reader("staff_name")
                Session("annual_year") = txtannualyear.Text
                Session("annual_sem") = ddlannualsem.SelectedItem.Value

                Session.Timeout = 10000
                MsgBox("done")
                Response.Redirect("stud_info.aspx")

            End If
        End If
    End Sub
End Class
