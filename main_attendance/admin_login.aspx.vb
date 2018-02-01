Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class admin_login
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim id, pass As String
        id = ddldept.SelectedValue
        pass = txtpass.Text

        If txtpass.Text = "" Or (Not (rbug.Checked) And Not (rbpg.Checked)) Then

            lblmsg.Text = "Please Fill all the Fields"
        Else


            constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)
            conn.Open()

            cmdstr = "select hod_id,password from HOD_info where hod_id='" & ddldept.SelectedItem.Value & "' and password='" & txtpass.Text & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            If Not (reader.Read) Then

                lblmsg.Text = "Incorrect Password!!!"

            Else

                Session("dept") = id
                If rbug.Checked Then
                    Session("degree") = "UG"
                Else
                    Session("degree") = "PG"
                End If
                Session.Timeout = 10000
                Response.Redirect("courses.aspx")
            End If
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = ""

    End Sub

    Protected Sub ddldept_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldept.SelectedIndexChanged
        If ddldept.SelectedItem.Value = "MCA" Then
            rbug.Enabled = False
            rbpg.Enabled = True
            rbpg.Checked = True
        Else
            rbug.Enabled = True
            rbpg.Enabled = True
        End If
    End Sub
End Class
