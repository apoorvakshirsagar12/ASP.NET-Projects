Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class account
    Inherits System.Web.UI.Page
    Dim code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)

      

    End Sub

    Protected Sub btndone_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndone.Click
        conn.Open()
        Dim dept, pass As String
        Dim x, x1 As Integer
        pass = ""
        dept = Session("dept")
        cmdstr = "select * from admin_info where id='" & dept & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        If (reader.Read) Then
            pass = reader("password")

            reader.Close()

            x = String.Compare(txtold.Text, pass)
            x1 = String.Compare(txtnew.Text, txtretype.Text)
            If txtold.Text = "" Or txtnew.Text = "" Or txtretype.Text = "" Then
                MsgBox("Please fill all the fields")
            Else
                If (x) Then
                    MsgBox("Incorrect Old Password", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
                    txtold.Text = ""
                ElseIf (x1) Then
                    MsgBox("Incorrect new password", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")


                Else

                    cmdstr = "UPDATE [admin_info] SET password='" & txtnew.Text & "' where id='" & dept & "'"
                    cmd = New SqlCommand(cmdstr, conn)
                    cmd.ExecuteNonQuery()
                    MsgBox("Password updated successfully!", MsgBoxStyle.MsgBoxSetForeground)
                    Response.Redirect("course.aspx")
                End If
            End If

        Else
            lblerror.Text = "USer does not exist"
        End If


        conn.Close()
    End Sub
End Class
